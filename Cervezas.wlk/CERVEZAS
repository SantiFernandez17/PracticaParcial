class Carpas {
	var limiteDeGente
	
}

class Cerveza {
	var capacidadEnLitros
	
	var marcaDeCerveza
	
	
	method graduacionAlcholicaDependeLaMarca(marca){
		marca.graduacionAlcoholica()
	}
	
}

class MarcaDeCerveza {
	
	var paisDeOrigen
	
	var property graduacionEnAlcohol
	
	method graduacionAlcoholica(){
		return graduacionEnAlcohol
	}
	
	method paisDeOrigen(pais){
		paisDeOrigen = pais
	}
	
	method masDeXGraduacionAlcoholica(cantidad){
		return graduacionEnAlcohol < cantidad
	}
}

class Persona {
	
	var peso
	
	var jarrasCompradasHastaElMomento
	
	const leGustaEscucharMusica
	
	var aguante
	
	var alcholEnSangre
	
	var marcaFavoritaDeCervezas
	
	method estaEbria(){
		return (alcholEnSangre * peso) > aguante
		
	}
}

object belgas {
	
	method marcaDeCervezaPreferida(marca, belgica){
		
		return marca.paisDeOrigen(belgica) 
		
	}
}

object checos {
	
	method marcaDeCervezaPreferida(marca){
		return marca.masDeXGraduacionAlcoholica(8)
	}
}

object alemanes {
	
	method gustoDeCervezaPreferido(){
		return true
	}
}


//Saber cuántos litros de alcohol aporta una jarra de cerveza. Ej: una jarra de
//cerveza de medio litro de la marca ‘Hofbräu’ (que tiene 8% de graduación
//alcohólica) aporta 0,5 * 0,08 = 0,04 litros de alcohol. 
