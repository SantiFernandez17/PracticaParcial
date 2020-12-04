object motorolaU9{
	
	var puntosDeBateria = 5

	
	method seGastaLaBat(){
		puntosDeBateria = puntosDeBateria - 0.25
	}
	
	method estaApagado(){
		return puntosDeBateria == 0
	}
	
	method recargarBateria(cantidad){
		puntosDeBateria = (cantidad + puntosDeBateria).max(5)
	}
}


object juliana {
	const property celular = motorolaU9
	
	method llamar(){
		celular.seGastaLaBat()
	}
	
}

object iphone{
	
	var puntosDeBateria = 5
	
	
	method reducirBateria(duracionDeLlamada){
		
		puntosDeBateria = (0.1 * duracionDeLlamada)
	}
	
	method estaApagado(){
		return puntosDeBateria == 0
	}
	
		method recargarBateria(cantidad){
		puntosDeBateria = (cantidad + puntosDeBateria).max(5)
	}
}

object catalina {
	
	const property celular = iphone
	
	
	
	method llamar(duracionDeLlamada){
		celular.reducirBateria(duracionDeLlamada)
	}
	
}
