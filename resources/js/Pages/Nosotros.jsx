import MainLayout from "@/Layouts/MainLayout";
import { ShieldCheck, Users, Globe, Zap, Eye, Target, Truck, Wrench, Settings, Briefcase } from 'lucide-react';

const BRAND_BLUE  = '#02478f';
const BRAND_LIGHT = '#9ab7ca';
const BRAND_PALE  = '#f0f6ff';

const STATS = [
  { value: "30+",    label: "Años de experiencia" },
  { value: "5.000+", label: "Clientes satisfechos" },
  { value: "10+",    label: "Marcas representadas" },
  { value: "9",      label: "Departamentos de Bolivia" },
];

const VALUES = [
  {
    icon: <ShieldCheck size={22} />,
    title: "Calidad garantizada",
    desc: "Todos nuestros vehículos y repuestos cumplen estándares internacionales de calidad y seguridad.",
  },
  {
    icon: <Users size={22} />,
    title: "Atención personalizada",
    desc: "Un equipo de asesores especializados que acompaña a cada cliente desde la consulta hasta la posventa.",
  },
  {
    icon: <Globe size={22} />,
    title: "Presencia nacional",
    desc: "Presentes en los 9 departamentos de Bolivia con una red de concesionarios y talleres autorizados.",
  },
  {
    icon: <Zap size={22} />,
    title: "Innovación constante",
    desc: "Incorporamos las últimas tecnologías en transporte pesado para ofrecer soluciones eficientes y sostenibles.",
  },
];

const BRANDS = ["DongFeng Motors", "Yutong Buses", "ZNA", "Repuestos Originales"];

const SERVICES = [
  { title: "Venta de vehículos",   desc: "Buses, camiones, SUV y vehículos de carga para uso comercial e industrial.", icon: <Truck size={28} /> },
  { title: "Repuestos originales", desc: "Amplio stock de repuestos originales y alternativos para todas las marcas que representamos.", icon: <Wrench size={28} /> },
  { title: "Servicio técnico",     desc: "Talleres autorizados con técnicos certificados para mantenimiento preventivo y correctivo.", icon: <Settings size={28} /> },
  { title: "Financiamiento",       desc: "Asesoría en planes de financiamiento adaptados a las necesidades de cada cliente.", icon: <Briefcase size={28} /> },
];

export default function Nosotros() {
  return (
    <MainLayout title="Nosotros | FABROS">

      {/* HERO */}
      <section className="relative overflow-hidden" style={{ background: `linear-gradient(135deg, ${BRAND_BLUE} 0%, #1a6bbf 100%)` }}>
        <div className="absolute inset-0 opacity-5"
          style={{ backgroundImage: "url(\"data:image/svg+xml,%3Csvg width='60' height='60' viewBox='0 0 60 60' xmlns='http://www.w3.org/2000/svg'%3E%3Cg fill='none' fill-rule='evenodd'%3E%3Cg fill='%23ffffff' fill-opacity='1'%3E%3Cpath d='M36 34v-4h-2v4h-4v2h4v4h2v-4h4v-2h-4zm0-30V0h-2v4h-4v2h4v4h2V6h4V4h-4zM6 34v-4H4v4H0v2h4v4h2v-4h4v-2H6zM6 4V0H4v4H0v2h4v4h2V6h4V4H6z'/%3E%3C/g%3E%3C/g%3E%3C/svg%3E\")" }}
        />
        <div className="absolute -top-24 -right-24 w-96 h-96 rounded-full opacity-10" style={{ backgroundColor: BRAND_LIGHT }} />
        <div className="absolute -bottom-16 -left-16 w-72 h-72 rounded-full opacity-10" style={{ backgroundColor: BRAND_LIGHT }} />

        <div className="relative max-w-6xl mx-auto px-4 sm:px-6 py-16 sm:py-24 lg:py-36 text-center text-white">
          <span className="inline-block px-4 py-2 rounded-full text-xs font-bold uppercase tracking-widest mb-5 border border-white/20" style={{ backgroundColor: 'rgba(255,255,255,0.1)' }}>
            Desde 1990 en Bolivia
          </span>
          <h1 className="text-3xl sm:text-5xl lg:text-6xl font-black uppercase tracking-tight leading-tight mb-5">
            Moviendo Bolivia<br />
            <span style={{ color: BRAND_LIGHT }}>con fuerza y confianza</span>
          </h1>
          <p className="text-base sm:text-xl text-white/75 max-w-2xl mx-auto leading-relaxed">
            Somos la empresa líder en distribución de vehículos de transporte pesado,
            buses y repuestos en Bolivia, con más de 30 años de trayectoria respaldando
            al sector productivo del país.
          </p>
        </div>

        <div className="absolute bottom-0 left-0 right-0">
          <svg viewBox="0 0 1440 60" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M0 60L1440 60L1440 0C1200 50 240 50 0 0L0 60Z" fill="white" />
          </svg>
        </div>
      </section>

      {/* STATS */}
      <section className="bg-white py-10 sm:py-14">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="grid grid-cols-2 lg:grid-cols-4 gap-3 sm:gap-5">
            {STATS.map((s) => (
              <div key={s.label} className="text-center p-4 sm:p-7 rounded-2xl border-2 transition-all hover:-translate-y-1 hover:shadow-lg"
                style={{ borderColor: BRAND_PALE, backgroundColor: BRAND_PALE }}
              >
                <p className="text-3xl sm:text-5xl font-black mb-1 sm:mb-2" style={{ color: BRAND_BLUE }}>{s.value}</p>
                <p className="text-xs sm:text-sm font-semibold text-gray-500 uppercase tracking-wide">{s.label}</p>
              </div>
            ))}
          </div>
        </div>
      </section>

      {/* QUIÉNES SOMOS */}
      <section className="py-14 sm:py-24" style={{ backgroundColor: '#f8fafc' }}>
        <div className="max-w-6xl mx-auto px-4 sm:px-6 grid lg:grid-cols-2 gap-10 lg:gap-16 items-center">
          <div>
            <span className="text-xs font-bold uppercase tracking-widest mb-4 block" style={{ color: BRAND_BLUE }}>Quiénes somos</span>
            <h2 className="text-3xl sm:text-4xl font-black text-gray-900 leading-tight mb-6">
              El socio estratégico del<br />transporte boliviano
            </h2>
            <div className="space-y-4 text-gray-600 leading-relaxed text-base">
              <p>
                <strong className="text-gray-900">FABROS</strong> es una empresa boliviana fundada con la misión de proveer al mercado
                nacional vehículos de transporte de alta calidad, repuestos originales y un servicio técnico de excelencia.
              </p>
              <p>
                Representamos a las marcas más reconocidas del sector: <strong className="text-gray-900">DongFeng Motors</strong>,
                <strong className="text-gray-900"> Yutong Buses</strong> y <strong className="text-gray-900">ZNA</strong>,
                ofreciendo soluciones integrales para el transporte urbano, interurbano y de carga.
              </p>
              <p>
                Nuestra red de concesionarios y talleres autorizados a nivel nacional garantiza que cada
                cliente reciba el respaldo que necesita, donde lo necesite.
              </p>
            </div>
          </div>

          <div className="relative pb-8 sm:pb-10">
            <div className="rounded-2xl overflow-hidden shadow-2xl aspect-video flex items-center justify-center" style={{ backgroundColor: BRAND_BLUE }}>
              <img
                src="https://res.cloudinary.com/dnbklbswg/image/upload/v1772254126/WhatsApp_Image_2026-02-26_at_16.11.57_futjnf_vukjzp.jpg"
                alt="FABROS"
                className="w-40 sm:w-56 object-contain opacity-90"
              />
            </div>
            <div className="absolute bottom-0 left-4 sm:-bottom-6 sm:-left-6 bg-white rounded-2xl shadow-xl px-5 py-4 border border-gray-100">
              <p className="text-3xl sm:text-4xl font-black" style={{ color: BRAND_BLUE }}>+30</p>
              <p className="text-xs text-gray-400 font-semibold uppercase tracking-wide mt-0.5">años en el mercado</p>
            </div>
          </div>
        </div>
      </section>

      {/* MISIÓN Y VISIÓN */}
      <section className="bg-white py-14 sm:py-24">
        <div className="max-w-6xl mx-auto px-4 sm:px-6">
          <div className="text-center mb-10 sm:mb-14">
            <span className="text-xs font-bold uppercase tracking-widest mb-3 block" style={{ color: BRAND_BLUE }}>Nuestra razón de ser</span>
            <h2 className="text-3xl sm:text-4xl font-black text-gray-900">Misión y Visión</h2>
          </div>
          <div className="grid lg:grid-cols-2 gap-6 sm:gap-8">
            <div className="rounded-2xl p-6 sm:p-9 shadow-sm" style={{ backgroundColor: BRAND_PALE, border: `2px solid ${BRAND_BLUE}` }}>
              <div className="w-12 h-12 sm:w-14 sm:h-14 rounded-2xl flex items-center justify-center mb-5 sm:mb-6" style={{ backgroundColor: BRAND_BLUE }}>
                <Target size={26} color="white" />
              </div>
              <h3 className="text-2xl font-black text-gray-900 mb-4">Nuestra Misión</h3>
              <p className="text-gray-600 leading-relaxed text-base">
                Proveer al mercado boliviano vehículos de transporte, repuestos y servicios de la más
                alta calidad, contribuyendo al desarrollo del sector productivo y al bienestar de la sociedad boliviana.
              </p>
            </div>
            <div className="rounded-2xl p-6 sm:p-9 shadow-sm" style={{ backgroundColor: '#f8fafc', border: `2px solid ${BRAND_LIGHT}` }}>
              <div className="w-12 h-12 sm:w-14 sm:h-14 rounded-2xl flex items-center justify-center mb-5 sm:mb-6" style={{ backgroundColor: BRAND_LIGHT }}>
                <Eye size={26} color="white" />
              </div>
              <h3 className="text-2xl font-black text-gray-900 mb-4">Nuestra Visión</h3>
              <p className="text-gray-600 leading-relaxed text-base">
                Ser la empresa de referencia en el sector de transporte pesado en Bolivia y Sudamérica,
                reconocida por la excelencia en su servicio, la calidad de sus productos y su compromiso
                con la innovación y la sostenibilidad.
              </p>
            </div>
          </div>
        </div>
      </section>

      {/* VALORES */}
      <section className="py-14 sm:py-24" style={{ backgroundColor: '#f8fafc' }}>
        <div className="max-w-6xl mx-auto px-4 sm:px-6">
          <div className="text-center mb-10 sm:mb-14">
            <span className="text-xs font-bold uppercase tracking-widest mb-3 block" style={{ color: BRAND_BLUE }}>Lo que nos define</span>
            <h2 className="text-3xl sm:text-4xl font-black text-gray-900">Nuestros valores</h2>
          </div>
          <div className="grid sm:grid-cols-2 lg:grid-cols-4 gap-6">
            {VALUES.map((v) => (
              <div key={v.title} className="bg-white rounded-2xl p-5 sm:p-7 border-2 border-gray-100 hover:border-[#02478f] hover:shadow-lg hover:-translate-y-1 transition-all group">
                <div className="w-10 h-10 sm:w-12 sm:h-12 rounded-xl flex items-center justify-center mb-4 sm:mb-5 transition-all group-hover:scale-110"
                  style={{ backgroundColor: BRAND_PALE, color: BRAND_BLUE }}
                >
                  {v.icon}
                </div>
                <h3 className="font-black text-gray-900 mb-2 text-base">{v.title}</h3>
                <p className="text-sm text-gray-500 leading-relaxed">{v.desc}</p>
              </div>
            ))}
          </div>
        </div>
      </section>

      {/* SERVICIOS */}
      <section className="bg-white py-14 sm:py-24">
        <div className="max-w-6xl mx-auto px-4 sm:px-6">
          <div className="text-center mb-10 sm:mb-14">
            <span className="text-xs font-bold uppercase tracking-widest mb-3 block" style={{ color: BRAND_BLUE }}>Lo que ofrecemos</span>
            <h2 className="text-3xl sm:text-4xl font-black text-gray-900">Nuestros servicios</h2>
          </div>
          <div className="grid sm:grid-cols-2 lg:grid-cols-4 gap-6">
            {SERVICES.map((s) => (
              <div key={s.title} className="bg-white rounded-2xl border-2 border-gray-100 p-5 sm:p-7 text-center hover:border-[#02478f] hover:shadow-lg hover:-translate-y-1 transition-all group">
                <div className="w-12 h-12 sm:w-14 sm:h-14 rounded-2xl flex items-center justify-center mx-auto mb-4 sm:mb-5 transition-all group-hover:scale-110"
                  style={{ backgroundColor: BRAND_PALE, color: BRAND_BLUE }}
                >
                  {s.icon}
                </div>
                <h3 className="font-black text-gray-900 mb-2 text-base">{s.title}</h3>
                <p className="text-sm text-gray-500 leading-relaxed">{s.desc}</p>
              </div>
            ))}
          </div>
        </div>
      </section>

      {/* MARCAS */}
      <section className="py-14 sm:py-20" style={{ backgroundColor: BRAND_BLUE }}>
        <div className="max-w-5xl mx-auto px-4 sm:px-6 text-center">
          <span className="text-xs font-bold uppercase tracking-widest text-white/50 mb-3 block">Nuestras marcas</span>
          <h2 className="text-2xl sm:text-3xl font-black text-white mb-8 sm:mb-10">Representamos a los mejores</h2>
          <div className="grid grid-cols-2 lg:grid-cols-4 gap-4">
            {BRANDS.map((b) => (
              <div key={b} className="rounded-xl px-4 py-6 text-white font-bold text-sm border border-white/20 hover:bg-white/20 transition-colors"
                style={{ backgroundColor: 'rgba(255,255,255,0.08)' }}
              >
                {b}
              </div>
            ))}
          </div>
        </div>
      </section>

      {/* CTA */}
      <section className="py-14 sm:py-24" style={{ backgroundColor: '#f8fafc' }}>
        <div className="max-w-3xl mx-auto px-4 sm:px-6 text-center">
          <h2 className="text-2xl sm:text-4xl font-black text-gray-900 mb-4">
            ¿Listo para trabajar con nosotros?
          </h2>
          <p className="text-gray-500 mb-10 leading-relaxed text-lg">
            Contáctanos hoy y un asesor especializado te orientará en la mejor solución para tu negocio.
          </p>
          <div className="flex flex-col sm:flex-row gap-4 justify-center">
            <a
              href="https://wa.me/59174161243?text=Hola!%20Me%20interesa%20conocer%20más%20sobre%20FABROS"
              target="_blank"
              rel="noopener noreferrer"
              className="inline-flex items-center justify-center gap-3 px-8 py-4 rounded-xl font-bold text-white transition-all hover:shadow-xl hover:scale-[1.02]"
              style={{ backgroundColor: '#25D366' }}
            >
              <svg className="w-5 h-5" fill="currentColor" viewBox="0 0 24 24">
                <path d="M.057 24l1.687-6.163c-1.041-1.804-1.588-3.849-1.587-5.946.003-6.556 5.338-11.891 11.893-11.891 3.181.001 6.167 1.24 8.413 3.488 2.245 2.248 3.481 5.236 3.48 8.414-.003 6.557-5.338 11.892-11.893 11.892-1.99-.001-3.951-.5-5.688-1.448l-6.305 1.654zm6.597-3.807c1.676.995 3.276 1.591 5.392 1.592 5.448 0 9.886-4.434 9.889-9.885.002-5.462-4.415-9.89-9.881-9.892-5.452 0-9.887 4.434-9.889 9.884-.001 2.225.651 3.891 1.746 5.634l-.999 3.648 3.742-.981zm11.387-5.464c-.074-.124-.272-.198-.57-.347-.297-.149-1.758-.868-2.031-.967-.272-.099-.47-.149-.669.149-.198.297-.768.967-.941 1.165-.173.198-.347.223-.644.074-.297-.149-1.255-.462-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.297-.347.446-.521.151-.172.2-.296.3-.495.099-.198.05-.372-.025-.521-.075-.148-.669-1.611-.916-2.206-.242-.579-.487-.501-.669-.51l-.57-.01c-.198 0-.52.074-.792.372s-1.04 1.016-1.04 2.479 1.065 2.876 1.213 3.074c.149.198 2.095 3.2 5.076 4.487.709.306 1.263.489 1.694.626.712.226 1.36.194 1.872.118.571-.085 1.758-.719 2.006-1.413.248-.695.248-1.29.173-1.414z" />
              </svg>
              Escribir por WhatsApp
            </a>
            <a
              href="mailto:info@fabros.com.bo"
              className="inline-flex items-center justify-center gap-3 px-8 py-4 rounded-xl font-bold transition-all hover:shadow-xl hover:scale-[1.02] border-2 hover:text-white"
              style={{ borderColor: BRAND_BLUE, color: BRAND_BLUE }}
              onMouseEnter={e => { e.currentTarget.style.backgroundColor = BRAND_BLUE; e.currentTarget.style.color = 'white'; }}
              onMouseLeave={e => { e.currentTarget.style.backgroundColor = 'transparent'; e.currentTarget.style.color = BRAND_BLUE; }}
            >
              info@fabros.com.bo
            </a>
          </div>
        </div>
      </section>

    </MainLayout>
  );
}
