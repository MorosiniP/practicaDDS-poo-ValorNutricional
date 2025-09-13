class Alimento {

var property porcionModificacion


method valorNutricional()

}

class Fruta inherits Alimento {
	
	override method valorNutricional () {
		
		return porcionModificacion.modificadorValor()
		
	}
	
	
}

class Verdura inherits Alimento {
	
	override method valorNutricional () {
		
		return porcionModificacion.modificadorValor()
		
	}
	
}


class Porcion {
	
var cantPorciones
var cantPorcionesServidad
var cantPorcionesDesperdiciadas

method modificadorValor()
	
}

class Snack inherits Porcion {
	
	override method modificadorValor() {
		
		
	}
	
}
