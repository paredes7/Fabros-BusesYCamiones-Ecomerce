export default function WelcomeSection() {
  return (
    <section className="py-20 animate-slide-in-top bg-white">
      <div className="container mx-auto px-6">
       
        <div className="text-center mb-16 space-y-6">
          <h2 className="text-4xl md:text-5xl lg:text-6xl font-black text-black tracking-tight">
            ¡BIENVENIDOS A{' '}
            <span className="relative inline-block">
              <span className="relative z-10">
                BUSES Y CAMIONES DE FABROS!
              </span>
              <span className="absolute bottom-2 left-0 w-full h-3 bg-black/10"></span>
            </span>
          </h2>
          
          <p className="text-xl md:text-2xl text-gray-600 max-w-4xl mx-auto leading-relaxed font-medium">
            Líder en transporte masivo de pasajeros
          </p>
        </div>

      
        <div className="flex justify-center items-center gap-4">
          <div className="w-20 h-0.5 bg-gradient-to-r from-transparent via-black to-transparent"></div>
          <div className="w-2 h-2 rounded-full bg-black"></div>
          <div className="w-20 h-0.5 bg-gradient-to-r from-transparent via-black to-transparent"></div>
        </div>
      </div>
    </section>
  );
}