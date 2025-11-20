object catalogoDeRaciones {
    var raciones = [] 

    method configurar(listaDeRaciones) {
        raciones = listaDeRaciones
    }
    
    method obtenerAplicable(porciones) = 
        raciones.find({ tipo => tipo.esAplicable(porciones) })
}

class TipoRacion {
    method esAplicable(porciones)
    method calcularMultiplicador()
}

class RacionSnack inherits TipoRacion {
    override method esAplicable(porciones) = porciones < 100
    override method calcularMultiplicador() = 0.5
}

class RacionNormal inherits TipoRacion {
    override method esAplicable(porciones) = porciones.between(100, 2000)
    override method calcularMultiplicador() = 1.5
}

class RacionBanquete inherits TipoRacion {
    override method esAplicable(porciones) = porciones > 2000
    override method calcularMultiplicador() = 2.5
}

class Alimento {
    const porciones 

    method valorBase()
    method porcionesReales() = porciones
    
    method valorNutricional() {
        const estrategia = catalogoDeRaciones.obtenerAplicable(self.porcionesReales())
        return self.valorBase() * estrategia.calcularMultiplicador()
    }
}

class Fruta inherits Alimento {
    override method valorBase() = porciones.even() 
    if (porciones > 0 ) { 0.5 } else { 0.3 }
}

class Verdura inherits Alimento {
    override method valorBase() = 1000 
}

class Cereal inherits Alimento {
    const cantidadPorcionesServidas 
    const cantidadPorcionesDesperdiciadas
    
    override method porcionesReales() = cantidadPorcionesServidas - cantidadPorcionesDesperdiciadas

    override method valorBase() = cantidadPorcionesDesperdiciadas > 0 if 
        { 1.10 } else { 1.0 }
}