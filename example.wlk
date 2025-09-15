class Alimento {

var property porcionModificacion
var property  valorNutricionalBase 

method valorNutricional()

}

class Fruta inherits Alimento {
	
	override method valorNutricional () {
		
		return porcionModificacion
		
	}
	
	
}


class Verdura inherits Alimento {
	
	
	override method valorNutricional () {
		valorNutricionalBase = 1000
		return porcionModificacion
		
	}
	
}


class Cereal inherits Alimento {
	
	override method valorNutricional () {
		valorNutricionalBase = if(porcionModificacion.cantPorcionesDesperdiciadas() > 100)0 else 1.10
		return porcionModificacion
		
	}
	
	
}

class Porcion {
	
var cantPorciones
var cantPorcionesServidas
var cantPorcionesDesperdiciadas

method calculoValor(alimento)
	
}

class Snack inherits Porcion {
	
	override method calculoValor(alimento) {
		
		return alimento.valorNutricional() + 0.5 
		
	}
	
}

class Racion inherits Porcion {
	
	override method calculoValor(alimento) {
		
		return alimento.valorNutricional() + 1.5
		
	}
	
	
}

class Banquete inherits Porcion {
	
	override method calculoValor(alimento) {
		
		return alimento.valorNutricional() + 2.5
		
	}
	
	
}
