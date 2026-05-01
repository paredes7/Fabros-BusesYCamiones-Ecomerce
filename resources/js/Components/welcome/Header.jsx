import { Link } from '@inertiajs/react';
import { useState, useEffect } from 'react';
import ParteArriba from './Header/partearriba';
import NavLink from './Header/Navlink';

const LEFT_LINKS = [
  { href: '/nosotros',   label: 'NOSOTROS' },
  { href: '/buses',      label: 'BUSES' },
  { href: '/camiones',   label: 'CAMIONES' },
];

const RIGHT_LINKS = [
  { href: '/maquinaria',     label: 'MAQUINARIA' },
  { href: '/servicios',      label: 'SERVICIOS' },
  { href: '/concesionarios', label: 'CONCESIONARIOS' },
];

const ALL_LINKS = [...LEFT_LINKS, ...RIGHT_LINKS];

const LOGO = 'https://res.cloudinary.com/dnbklbswg/image/upload/v1772254126/WhatsApp_Image_2026-02-26_at_16.11.57_futjnf_vukjzp.jpg';

export default function Header() {
  const [isScrolled, setIsScrolled]     = useState(false);
  const [mobileMenuOpen, setMobileMenuOpen] = useState(false);

  useEffect(() => {
    const onScroll = () => setIsScrolled(window.scrollY > 20);
    window.addEventListener('scroll', onScroll);
    return () => window.removeEventListener('scroll', onScroll);
  }, []);

  return (
    <>
      <ParteArriba />

      <header className={`w-full animate-blurred-fade-in bg-brandBlue shadow-md transition-all duration-300 sticky top-0 z-50 ${isScrolled ? 'py-2' : 'py-3 md:py-4'}`}>

        {/* ── DESKTOP (lg+): nav izq | logo centro | nav der ── */}
        <div className="container mx-auto hidden lg:grid grid-cols-[1fr_auto_1fr] items-center px-6">

          <nav className="flex items-center justify-end gap-5 xl:gap-8 text-white">
            {LEFT_LINKS.map((l) => (
              <NavLink key={l.href} href={l.href}>{l.label}</NavLink>
            ))}
          </nav>

          <div className="flex justify-center px-6 xl:px-10">
            <Link href="/">
              <img
                src={LOGO}
                alt="Fabros Bolivia"
                className={`object-contain transition-all duration-300 ${isScrolled ? 'h-11 w-28' : 'h-16 w-44'}`}
              />
            </Link>
          </div>

          <nav className="flex items-center justify-start gap-5 xl:gap-8 text-white">
            {RIGHT_LINKS.map((l) => (
              <NavLink key={l.href} href={l.href}>{l.label}</NavLink>
            ))}
          </nav>
        </div>

        {/* ── TABLET (md–lg): logo izq | links centro | hamburguesa ── */}
        <div className="container mx-auto hidden md:flex lg:hidden items-center justify-between px-6 gap-4">
          <Link href="/" className="shrink-0">
            <img src={LOGO} alt="Fabros Bolivia" className="h-12 w-32 object-contain" />
          </Link>

          <nav className="flex items-center gap-4 text-white text-xs font-bold tracking-widest flex-wrap justify-center">
            {ALL_LINKS.map((l) => (
              <NavLink key={l.href} href={l.href}>{l.label}</NavLink>
            ))}
          </nav>
        </div>

        {/* ── MÓVIL (<md): logo | hamburguesa ── */}
        <div className="container mx-auto flex md:hidden items-center justify-between px-4">
          <Link href="/">
            <img src={LOGO} alt="Fabros Bolivia" className="h-11 w-28 object-contain" />
          </Link>

          <button
            className="p-2 text-white hover:text-brandLight transition-colors"
            onClick={() => setMobileMenuOpen(!mobileMenuOpen)}
            aria-label="Toggle menu"
          >
            {mobileMenuOpen ? (
              <svg className="w-7 h-7" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M6 18L18 6M6 6l12 12" />
              </svg>
            ) : (
              <svg className="w-7 h-7" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M4 6h16M4 12h16M4 18h16" />
              </svg>
            )}
          </button>
        </div>

        {/* ── MENÚ DESPLEGABLE MÓVIL ── */}
        <div className={`md:hidden overflow-hidden transition-all duration-300 ${mobileMenuOpen ? 'max-h-screen border-t border-brandLight/30' : 'max-h-0'}`}>
          <nav className="container mx-auto px-4 py-3 flex flex-col">
            {ALL_LINKS.map((l) => (
              <Link
                key={l.href}
                href={l.href}
                className="text-white hover:text-brandLight hover:bg-white/5 font-bold tracking-widest text-sm transition-all py-3 px-2 text-center border-b border-brandLight/20 last:border-0"
                onClick={() => setMobileMenuOpen(false)}
              >
                {l.label}
              </Link>
            ))}
          </nav>
        </div>

      </header>
    </>
  );
}
