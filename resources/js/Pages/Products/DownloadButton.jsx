import { useState, useRef, useEffect } from "react";
import { Download, ChevronDown, FileText, FileDown, Loader2 } from "lucide-react";
import jsPDF from "jspdf";
import autoTable from "jspdf-autotable";

async function urlToDataURL(url) {
  return new Promise((resolve) => {
    const img = new Image();
    img.crossOrigin = "anonymous";
    img.onload = () => {
      const canvas = document.createElement("canvas");
      canvas.width = img.naturalWidth;
      canvas.height = img.naturalHeight;
      canvas.getContext("2d").drawImage(img, 0, 0);
      try {
        resolve(canvas.toDataURL("image/jpeg", 0.85));
      } catch {
        resolve(null);
      }
    };
    img.onerror = () => resolve(null);
    img.src = url.includes("?") ? url : `${url}?_=${Date.now()}`;
  });
}

function sectionHeader(doc, text, y, pageW) {
  const pink = [219, 39, 119];
  doc.setFillColor(...pink);
  doc.rect(14, y - 5, pageW - 28, 8, "F");
  doc.setTextColor(255, 255, 255);
  doc.setFontSize(9);
  doc.setFont("helvetica", "bold");
  doc.text(text, 17, y);
  return y + 7;
}

function addFooter(doc, pageW, pageH) {
  doc.setFillColor(240, 244, 248);
  doc.rect(0, pageH - 14, pageW, 14, "F");
  doc.setFontSize(7.5);
  doc.setTextColor(100);
  doc.setFont("helvetica", "normal");
  const date = new Date().toLocaleDateString("es-CL", { year: "numeric", month: "long", day: "numeric" });
  doc.text(`PRAGATI · Ficha generada el ${date}`, 14, pageH - 5);
  doc.text("www.pragati.cl", pageW - 14, pageH - 5, { align: "right" });
}

async function generateProductPDF(product) {
  const doc = new jsPDF({ unit: "mm", format: "a4" });
  const pink = [219, 39, 119];
  const lightPink = [251, 207, 232];
  const pageW = doc.internal.pageSize.getWidth();
  const pageH = doc.internal.pageSize.getHeight();
  const margin = 14;

  // HEADER
  doc.setFillColor(...pink);
  doc.rect(0, 0, pageW, 36, "F");

  doc.setFillColor(...lightPink);
  doc.rect(0, 33, pageW, 3, "F");

  doc.setTextColor(255, 255, 255);
  doc.setFontSize(22);
  doc.setFont("helvetica", "bold");
  doc.text("PRAGATI", margin, 15);

  doc.setFontSize(9);
  doc.setFont("helvetica", "normal");
  doc.setTextColor(255, 220, 235);
  doc.text("Ficha Técnica de Producto", margin, 23);

  const date = new Date().toLocaleDateString("es-CL", { day: "2-digit", month: "2-digit", year: "numeric" });
  doc.setFontSize(8);
  doc.setTextColor(255, 220, 235);
  doc.text(date, pageW - margin, 15, { align: "right" });

  // PRODUCT NAME
  let y = 46;
  doc.setTextColor(...pink);
  doc.setFontSize(17);
  doc.setFont("helvetica", "bold");
  const nameLines = doc.splitTextToSize(product.name || "", pageW - margin * 2);
  doc.text(nameLines, margin, y);
  y += nameLines.length * 7 + 2;

  doc.setDrawColor(...lightPink);
  doc.setLineWidth(0.8);
  doc.line(margin, y, margin + 40, y);
  y += 8;

  // MAIN IMAGE + PRICE
  const images = (product.multimedia || []).filter(
    (m) => m.type !== "video" && m.multimedia_type_id !== 7
  );

  const mainImgUrl = images[0]?.url || null;
  const imgW = 80;
  const imgH = 55;
  const priceColX = margin + imgW + 8;

  if (mainImgUrl) {
    const dataURL = await urlToDataURL(mainImgUrl);
    if (dataURL) {
      doc.setDrawColor(220, 228, 240);
      doc.setLineWidth(0.5);
      doc.rect(margin, y, imgW, imgH);
      doc.addImage(dataURL, "JPEG", margin, y, imgW, imgH);
    }
  }

  y += imgH + 10;

  // DESCRIPCIÓN
  const desc = product.description || "";
  if (desc) {
    y = sectionHeader(doc, "DESCRIPCIÓN", y, pageW);
    y += 3;
    doc.setFontSize(9);
    doc.setFont("helvetica", "normal");
    doc.setTextColor(60, 60, 60);
    const descLines = doc.splitTextToSize(desc, pageW - margin * 2);
    doc.text(descLines, margin, y);
    y += descLines.length * 4.5 + 8;
  }

  // CARACTERÍSTICAS TÉCNICAS
  const specs = product.caracteristicas || [];
  if (specs.length > 0) {
    y = sectionHeader(doc, "CARACTERÍSTICAS TÉCNICAS", y, pageW);
    y += 2;

    autoTable(doc, {
      startY: y,
      head: [],
      body: specs.map((s) => [s.nombre, s.valor]),
      theme: "plain",
      styles: { fontSize: 9.5, cellPadding: { top: 3, bottom: 3, left: 5, right: 5 } },
      columnStyles: {
        0: { fontStyle: "bold", textColor: [40, 40, 40], cellWidth: 85 },
        1: { textColor: [60, 60, 60], halign: "right" },
      },
      alternateRowStyles: { fillColor: [255, 245, 250] },
      margin: { left: margin, right: margin },
      didParseCell: (data) => {
        if (data.row.index % 2 === 0) data.cell.styles.fillColor = [255, 255, 255];
      },
    });

    y = doc.lastAutoTable.finalY + 10;
  }

  // VARIANTES
  const variants = product.variants || [];
  if (variants.length > 0) {
    const grouped = variants.reduce((acc, v) => {
      v.values.forEach(({ attribute, value }) => {
        if (!acc[attribute]) acc[attribute] = [];
        acc[attribute].push(value);
      });
      return acc;
    }, {});

    y = sectionHeader(doc, "VARIANTES DISPONIBLES", y, pageW);
    y += 2;

    autoTable(doc, {
      startY: y,
      head: [],
      body: Object.entries(grouped).map(([attr, vals]) => [attr, vals.join("  ·  ")]),
      theme: "plain",
      styles: { fontSize: 9.5, cellPadding: { top: 3, bottom: 3, left: 5, right: 5 } },
      columnStyles: {
        0: { fontStyle: "bold", textColor: [...pink], cellWidth: 50 },
        1: { textColor: [60, 60, 60] },
      },
      alternateRowStyles: { fillColor: [255, 245, 250] },
      margin: { left: margin, right: margin },
    });

    y = doc.lastAutoTable.finalY + 10;
  }

  // GALERÍA
  const galleryImgs = images.slice(1, 7);
  if (galleryImgs.length > 0) {
    if (y > pageH - 80) { doc.addPage(); y = 20; }

    y = sectionHeader(doc, "GALERÍA DE IMÁGENES", y, pageW);
    y += 4;

    const cols = 3;
    const gW = (pageW - margin * 2 - (cols - 1) * 4) / cols;
    const gH = gW * 0.65;

    for (let i = 0; i < galleryImgs.length; i++) {
      const col = i % cols;
      const row = Math.floor(i / cols);
      const x = margin + col * (gW + 4);
      const gy = y + row * (gH + 4);

      if (gy + gH > pageH - 20) { doc.addPage(); y = 20 - row * (gH + 4); }

      const dataURL = await urlToDataURL(galleryImgs[i].url);
      if (dataURL) {
        doc.setDrawColor(220, 228, 240);
        doc.setLineWidth(0.3);
        doc.rect(x, gy, gW, gH);
        doc.addImage(dataURL, "JPEG", x, gy, gW, gH);
      }
    }

    const rows = Math.ceil(galleryImgs.length / cols);
    y += rows * (gH + 4) + 6;
  }

  // FOOTER en cada página
  const totalPages = doc.internal.getNumberOfPages();
  for (let p = 1; p <= totalPages; p++) {
    doc.setPage(p);
    addFooter(doc, pageW, pageH);
  }

  doc.save(`${(product.name || "producto").replace(/\s+/g, "_")}.pdf`);
}

export default function DownloadButton({ product, documento }) {
  const [open, setOpen] = useState(false);
  const [generating, setGenerating] = useState(false);
  const ref = useRef(null);

  useEffect(() => {
    const handler = (e) => { if (ref.current && !ref.current.contains(e.target)) setOpen(false); };
    document.addEventListener("mousedown", handler);
    return () => document.removeEventListener("mousedown", handler);
  }, []);

  const handleFicha = async () => {
    setOpen(false);
    setGenerating(true);
    await generateProductPDF(product);
    setGenerating(false);
  };

  const handleDocumento = async () => {
    setOpen(false);
    setGenerating(true);
    try {
      const res = await fetch(documento.url);
      const blob = await res.blob();
      const blobUrl = URL.createObjectURL(blob);
      const a = document.createElement("a");
      a.href = blobUrl;
      a.download = documento.title || "documento.pdf";
      document.body.appendChild(a);
      a.click();
      a.remove();
      URL.revokeObjectURL(blobUrl);
    } catch {
      window.open(documento.url, "_blank");
    } finally {
      setGenerating(false);
    }
  };

  const btnClass = "flex items-center justify-center gap-3 w-full py-4 px-6 rounded-xl font-bold text-base sm:text-lg transition-all duration-300 hover:shadow-xl hover:scale-[1.02] disabled:opacity-60 disabled:cursor-not-allowed disabled:scale-100";
  const btnStyle = { backgroundColor: "#374151", color: "white" };

  if (!documento) {
    return (
      <button onClick={handleFicha} disabled={generating} className={btnClass} style={btnStyle}>
        {generating ? <Loader2 size={20} className="animate-spin" /> : <Download size={20} />}
        {generating ? "Generando PDF..." : "Descargar ficha del producto"}
      </button>
    );
  }

  return (
    <div ref={ref} className="relative w-full">
      <button
        onClick={() => !generating && setOpen((v) => !v)}
        disabled={generating}
        className={`${btnClass} justify-between`}
        style={btnStyle}
      >
        <span className="flex items-center gap-3">
          {generating ? <Loader2 size={20} className="animate-spin" /> : <Download size={20} />}
          {generating ? "Generando PDF..." : "Descargar"}
        </span>
        <ChevronDown
          size={18}
          className="transition-transform duration-200"
          style={{ transform: open ? "rotate(180deg)" : "rotate(0deg)" }}
        />
      </button>

      {open && (
        <div className="absolute bottom-full mb-2 left-0 w-full bg-white rounded-xl shadow-2xl border border-gray-100 overflow-hidden z-20">
          <button
            onClick={handleDocumento}
            className="flex items-center gap-3 w-full px-5 py-4 text-sm font-semibold text-gray-700 hover:bg-pink-50 hover:text-pink-700 transition-colors duration-200"
          >
            <FileText size={18} className="text-pink-600" />
            <div className="text-left">
              <p className="font-bold">Descargar documento</p>
              <p className="text-xs text-gray-400 font-normal">{documento.title || "Archivo adjunto"}</p>
            </div>
          </button>
          <div className="border-t border-gray-100" />
          <button
            onClick={handleFicha}
            className="flex items-center gap-3 w-full px-5 py-4 text-sm font-semibold text-gray-700 hover:bg-pink-50 hover:text-pink-700 transition-colors duration-200"
          >
            <FileDown size={18} className="text-pink-600" />
            <div className="text-left">
              <p className="font-bold">Descargar ficha del producto</p>
              <p className="text-xs text-gray-400 font-normal">PDF generado con datos del producto</p>
            </div>
          </button>
        </div>
      )}
    </div>
  );
}
