import { useState, useRef, useEffect } from "react";
import { Download, ChevronDown, FileText, FileDown, Loader2 } from "lucide-react";
import jsPDF from "jspdf";
import autoTable from "jspdf-autotable";

// Colores marca Fabros
const BLUE       = [2,   71,  143]; // #02478f
const BLUE_LIGHT = [154, 183, 202]; // #9ab7ca
const BLUE_PALE  = [240, 246, 255]; // #f0f6ff
const WHITE      = [255, 255, 255];
const DARK       = [30,  30,  30];
const GRAY       = [100, 100, 100];

async function urlToDataURL(url) {
  return new Promise((resolve) => {
    const img = new Image();
    img.crossOrigin = "anonymous";
    img.onload = () => {
      const canvas = document.createElement("canvas");
      canvas.width  = img.naturalWidth;
      canvas.height = img.naturalHeight;
      canvas.getContext("2d").drawImage(img, 0, 0);
      try { resolve(canvas.toDataURL("image/jpeg", 0.85)); }
      catch { resolve(null); }
    };
    img.onerror = () => resolve(null);
    img.src = url.includes("?") ? url : `${url}?_=${Date.now()}`;
  });
}

function drawHeader(doc, pageW) {
  // Banda azul principal
  doc.setFillColor(...BLUE);
  doc.rect(0, 0, pageW, 32, "F");
  // Banda azul claro inferior
  doc.setFillColor(...BLUE_LIGHT);
  doc.rect(0, 30, pageW, 3, "F");

  // Nombre empresa
  doc.setTextColor(...WHITE);
  doc.setFontSize(20);
  doc.setFont("helvetica", "bold");
  doc.text("FABROS", 14, 14);

  // Subtítulo
  doc.setFontSize(8);
  doc.setFont("helvetica", "normal");
  doc.setTextColor(200, 220, 240);
  doc.text("Ficha Técnica de Producto", 14, 22);

  // Fecha alineada a la derecha
  const date = new Date().toLocaleDateString("es-BO", { day: "2-digit", month: "2-digit", year: "numeric" });
  doc.setFontSize(8);
  doc.setTextColor(200, 220, 240);
  doc.text(date, pageW - 14, 14, { align: "right" });
  doc.text("www.fabros.com.bo", pageW - 14, 22, { align: "right" });
}

function drawFooter(doc, pageW, pageH, pageNum, totalPages) {
  doc.setFillColor(...BLUE_PALE);
  doc.rect(0, pageH - 12, pageW, 12, "F");
  doc.setDrawColor(...BLUE_LIGHT);
  doc.setLineWidth(0.3);
  doc.line(0, pageH - 12, pageW, pageH - 12);
  doc.setFontSize(7);
  doc.setTextColor(...GRAY);
  doc.setFont("helvetica", "normal");
  doc.text("FABROS Bolivia · info@fabros.com.bo · +591 74161243", 14, pageH - 4);
  doc.text(`Página ${pageNum} de ${totalPages}`, pageW - 14, pageH - 4, { align: "right" });
}

function sectionTitle(doc, text, y, pageW) {
  doc.setFillColor(...BLUE);
  doc.rect(14, y - 5, pageW - 28, 9, "F");
  // Acento lateral
  doc.setFillColor(...BLUE_LIGHT);
  doc.rect(14, y - 5, 3, 9, "F");
  doc.setTextColor(...WHITE);
  doc.setFontSize(8.5);
  doc.setFont("helvetica", "bold");
  doc.text(text, 21, y + 0.5);
  return y + 9;
}

function checkPageBreak(doc, y, pageH, needed = 20) {
  if (y + needed > pageH - 18) {
    doc.addPage();
    drawHeader(doc, doc.internal.pageSize.getWidth());
    return 42;
  }
  return y;
}

async function generateProductPDF(product) {
  const doc   = new jsPDF({ unit: "mm", format: "a4" });
  const pageW = doc.internal.pageSize.getWidth();
  const pageH = doc.internal.pageSize.getHeight();
  const M     = 14; // margin

  drawHeader(doc, pageW);
  let y = 40;

  // ── NOMBRE DEL PRODUCTO ──────────────────────────────────────
  doc.setTextColor(...BLUE);
  doc.setFontSize(16);
  doc.setFont("helvetica", "bold");
  const nameLines = doc.splitTextToSize((product.name || "").toUpperCase(), pageW - M * 2);
  doc.text(nameLines, M, y);
  y += nameLines.length * 7;

  // Línea decorativa
  doc.setDrawColor(...BLUE_LIGHT);
  doc.setLineWidth(1);
  doc.line(M, y, M + 50, y);
  y += 6;

  // ── DESCRIPCIÓN CORTA ────────────────────────────────────────
  if (product.description) {
    doc.setFontSize(9);
    doc.setFont("helvetica", "italic");
    doc.setTextColor(...GRAY);
    const descLines = doc.splitTextToSize(product.description, pageW - M * 2);
    doc.text(descLines, M, y);
    y += descLines.length * 4.5 + 4;
  }

  // ── IMAGEN PRINCIPAL + ESPECIFICACIONES BÁSICAS ──────────────
  const allImages = (product.multimedia || []).filter(m => m.type !== "video" && m.multimedia_type_id !== 7);
  const mainImg   = allImages.find(m => m.multimedia_type_id === 1) || allImages[0] || null;

  const imgW = 85;
  const imgH = 58;
  const infoX = M + imgW + 8;
  const infoW = pageW - infoX - M;

  if (mainImg) {
    const dataURL = await urlToDataURL(mainImg.url);
    if (dataURL) {
      doc.setDrawColor(...BLUE_LIGHT);
      doc.setLineWidth(0.4);
      doc.roundedRect(M, y, imgW, imgH, 2, 2);
      doc.addImage(dataURL, "JPEG", M, y, imgW, imgH);
    }
  }

  // Especificaciones básicas al lado de la imagen
  const specs = [
    product.specifications?.motor      && ["Motor",       product.specifications.motor],
    product.specifications?.potencia   && ["Potencia",    product.specifications.potencia],
    product.specifications?.transmision && ["Transmisión", product.specifications.transmision],
    product.specifications?.peso       && ["Capacidad",   product.specifications.peso],
  ].filter(Boolean);

  if (specs.length > 0) {
    let sy = y + 4;
    doc.setFontSize(8);
    specs.forEach(([label, value]) => {
      doc.setFont("helvetica", "bold");
      doc.setTextColor(...BLUE);
      doc.text(label, infoX, sy);
      doc.setFont("helvetica", "normal");
      doc.setTextColor(...DARK);
      const valLines = doc.splitTextToSize(value, infoW);
      doc.text(valLines, infoX, sy + 4);
      sy += valLines.length * 4 + 7;
    });
  }

  y += imgH + 8;

  // ── DESCRIPCIÓN LARGA ────────────────────────────────────────
  if (product.longDescription) {
    y = checkPageBreak(doc, y, pageH, 30);
    y = sectionTitle(doc, "DESCRIPCIÓN DETALLADA", y, pageW);
    y += 4;
    doc.setFontSize(9);
    doc.setFont("helvetica", "normal");
    doc.setTextColor(...DARK);
    // Limpiar HTML básico
    const cleanDesc = product.longDescription.replace(/<[^>]+>/g, " ").replace(/\s+/g, " ").trim();
    const longLines = doc.splitTextToSize(cleanDesc, pageW - M * 2);
    longLines.forEach((line) => {
      y = checkPageBreak(doc, y, pageH, 6);
      doc.text(line, M, y);
      y += 4.5;
    });
    y += 6;
  }

  // ── CARACTERÍSTICAS TÉCNICAS (tabla caracteristicas) ─────────
  const caracteristicas = product.caracteristicas || [];
  if (caracteristicas.length > 0) {
    y = checkPageBreak(doc, y, pageH, 30);
    y = sectionTitle(doc, "CARACTERÍSTICAS TÉCNICAS", y, pageW);
    y += 2;

    autoTable(doc, {
      startY: y,
      head: [["Característica", "Valor"]],
      body: caracteristicas.map(c => [c.nombre, c.valor]),
      theme: "grid",
      headStyles: {
        fillColor: BLUE,
        textColor: WHITE,
        fontStyle: "bold",
        fontSize: 8.5,
      },
      bodyStyles: { fontSize: 9, textColor: DARK },
      alternateRowStyles: { fillColor: BLUE_PALE },
      columnStyles: {
        0: { fontStyle: "bold", cellWidth: 80 },
        1: { cellWidth: "auto" },
      },
      margin: { left: M, right: M },
    });
    y = doc.lastAutoTable.finalY + 8;
  }

  // ── VARIANTES ────────────────────────────────────────────────
  const variants = product.variants || [];
  if (variants.length > 0) {
    y = checkPageBreak(doc, y, pageH, 30);
    y = sectionTitle(doc, "VARIANTES DISPONIBLES", y, pageW);
    y += 2;

    const grouped = {};
    variants.forEach(v => {
      (v.values || []).forEach(({ attribute, value }) => {
        if (!grouped[attribute]) grouped[attribute] = new Set();
        grouped[attribute].add(value);
      });
    });

    autoTable(doc, {
      startY: y,
      head: [["Atributo", "Valores disponibles"]],
      body: Object.entries(grouped).map(([attr, vals]) => [attr, [...vals].join("  ·  ")]),
      theme: "grid",
      headStyles: { fillColor: BLUE, textColor: WHITE, fontStyle: "bold", fontSize: 8.5 },
      bodyStyles: { fontSize: 9, textColor: DARK },
      alternateRowStyles: { fillColor: BLUE_PALE },
      columnStyles: { 0: { fontStyle: "bold", cellWidth: 60 } },
      margin: { left: M, right: M },
    });
    y = doc.lastAutoTable.finalY + 8;
  }

  // ── IMÁGENES POR SECCIÓN (multimedia_type) ───────────────────
  const typeNames = {
    1: "GENERAL",
    2: "GALERÍA",
    3: "INTERIOR",
    4: "EXTERIOR",
    5: "PERFORMANCE",
    6: "SEGURIDAD",
  };

  const byType = {};
  allImages.forEach(m => {
    const tid = m.multimedia_type_id;
    if (!byType[tid]) byType[tid] = [];
    byType[tid].push(m);
  });

  for (const [tid, imgs] of Object.entries(byType)) {
    if (!imgs.length) continue;
    const label = typeNames[tid] || `SECCIÓN ${tid}`;

    // Buscar si hay imágenes con título/descripción (tipo performance/seguridad)
    const hasInfo = imgs.some(m => m.title || m.description);

    y = checkPageBreak(doc, y, pageH, 50);
    y = sectionTitle(doc, `IMÁGENES — ${label}`, y, pageW);
    y += 4;

    if (hasInfo) {
      // Layout: imagen grande + texto al lado
      for (const img of imgs) {
        y = checkPageBreak(doc, y, pageH, 55);
        const iW = 80, iH = 52;
        const tX = M + iW + 6;
        const tW = pageW - tX - M;

        const dataURL = await urlToDataURL(img.url);
        if (dataURL) {
          doc.setDrawColor(...BLUE_LIGHT);
          doc.setLineWidth(0.3);
          doc.roundedRect(M, y, iW, iH, 2, 2);
          doc.addImage(dataURL, "JPEG", M, y, iW, iH);
        }

        if (img.title) {
          doc.setFontSize(10);
          doc.setFont("helvetica", "bold");
          doc.setTextColor(...BLUE);
          doc.text(img.title, tX, y + 6);
        }
        if (img.description) {
          doc.setFontSize(8);
          doc.setFont("helvetica", "normal");
          doc.setTextColor(...DARK);
          const dLines = doc.splitTextToSize(img.description, tW);
          doc.text(dLines, tX, y + (img.title ? 13 : 6));
        }
        y += iH + 6;
      }
    } else {
      // Grid 3 columnas
      const cols = 3;
      const gW   = (pageW - M * 2 - (cols - 1) * 4) / cols;
      const gH   = gW * 0.65;

      for (let i = 0; i < imgs.length; i++) {
        const col = i % cols;
        const row = Math.floor(i / cols);
        if (col === 0 && row > 0) y += gH + 4;
        y = checkPageBreak(doc, y, pageH, gH + 10);

        const x  = M + col * (gW + 4);
        const gy = y;

        const dataURL = await urlToDataURL(imgs[i].url);
        if (dataURL) {
          doc.setDrawColor(...BLUE_LIGHT);
          doc.setLineWidth(0.3);
          doc.roundedRect(x, gy, gW, gH, 1, 1);
          doc.addImage(dataURL, "JPEG", x, gy, gW, gH);
        }
      }
      const rows = Math.ceil(imgs.length / cols);
      y += rows > 1 ? gH + 8 : gH + 8;
    }
  }

  // ── FOOTER en todas las páginas ──────────────────────────────
  const total = doc.internal.getNumberOfPages();
  for (let p = 1; p <= total; p++) {
    doc.setPage(p);
    drawFooter(doc, pageW, pageH, p, total);
  }

  doc.save(`${(product.name || "producto").replace(/\s+/g, "_")}.pdf`);
}

// ── COMPONENTE ───────────────────────────────────────────────────
export default function DownloadButton({ product, documento }) {
  const [open, setOpen]           = useState(false);
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
      const res    = await fetch(documento.url);
      const blob   = await res.blob();
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

  const btnBase = "flex items-center justify-center gap-3 w-full py-4 px-6 rounded-xl font-bold text-base sm:text-lg transition-all duration-300 hover:shadow-xl hover:scale-[1.02] disabled:opacity-60 disabled:cursor-not-allowed disabled:scale-100";
  const btnStyle = { backgroundColor: "#02478f", color: "white" };

  if (!documento) {
    return (
      <button onClick={handleFicha} disabled={generating} className={btnBase} style={btnStyle}>
        {generating ? <Loader2 size={20} className="animate-spin" /> : <Download size={20} />}
        {generating ? "Generando PDF..." : "Descargar ficha técnica"}
      </button>
    );
  }

  return (
    <div ref={ref} className="relative w-full">
      <button
        onClick={() => !generating && setOpen(v => !v)}
        disabled={generating}
        className={`${btnBase} justify-between`}
        style={btnStyle}
      >
        <span className="flex items-center gap-3">
          {generating ? <Loader2 size={20} className="animate-spin" /> : <Download size={20} />}
          {generating ? "Generando PDF..." : "Descargar"}
        </span>
        <ChevronDown size={18} className="transition-transform duration-200" style={{ transform: open ? "rotate(180deg)" : "rotate(0deg)" }} />
      </button>

      {open && (
        <div className="absolute bottom-full mb-2 left-0 w-full bg-white rounded-xl shadow-2xl border border-gray-100 overflow-hidden z-20">
          <button
            onClick={handleDocumento}
            className="flex items-center gap-3 w-full px-5 py-4 text-sm font-semibold text-gray-700 hover:bg-blue-50 hover:text-brandBlue transition-colors duration-200"
          >
            <FileText size={18} style={{ color: "#02478f" }} />
            <div className="text-left">
              <p className="font-bold">Descargar documento</p>
              <p className="text-xs text-gray-400 font-normal">{documento.title || "Archivo adjunto"}</p>
            </div>
          </button>
          <div className="border-t border-gray-100" />
          <button
            onClick={handleFicha}
            className="flex items-center gap-3 w-full px-5 py-4 text-sm font-semibold text-gray-700 hover:bg-blue-50 hover:text-brandBlue transition-colors duration-200"
          >
            <FileDown size={18} style={{ color: "#02478f" }} />
            <div className="text-left">
              <p className="font-bold">Descargar ficha técnica</p>
              <p className="text-xs text-gray-400 font-normal">PDF con todos los datos del producto</p>
            </div>
          </button>
        </div>
      )}
    </div>
  );
}
