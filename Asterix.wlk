class Pocion {
	
	var property ingredientes = [] // pueden ser los que se han modelado
	
	method cantidadDeIngredientesDePocion(){
		return ingredientes.size()
	}
	
}

object dulceDeLeche{
	
	
	method efectos(persona){
		persona.aumentarFuerzaPorDulce()
		persona.revive()
	}
	
	
}


class Personas {
	var property fuerza
	
	var property estaEnCombate = true
	
	var property resistencia
	
	var property hongosEnPuniado
	
	
	method poder(){
		return fuerza * resistencia
	}
	
	method cuantosHongosHay(){
		return hongosEnPuniado.size()
	}
	
	method aumentarFuerzaPorHongos(){
		fuerza += self.cuantosHongosHay()
		if(self.cuantosHongosHay() > 5){
			self.disminuirResistencia()
		}
	}
	
	method disminuirResistencia(){
		resistencia = resistencia / 2
	}
	
	method aumentarFuerzaPorDulce(){
		fuerza ++
	}
	
	method revive(){
		if(estaEnCombate){
			
		}else{
			(resistencia += 2).min(0)
		}
	}
	
	method tomarDulceDeLeche(){
		dulceDeLeche.efectos(self)
	}
	
	method recibirDanio(puntosDeDanio){
		resistencia = (resistencia - puntosDeDanio).min(0)
	}
	
	method sumateFuerzaPorCantidadDeIngredientes(pocion){
	fuerza =  pocion.cantidadDeIngredientesDePocion() + fuerza
	}
	
	method sumateFuerzaPorCantidadDeIngredientesYDuplicarResistencia(pocion){
		fuerza =  pocion.cantidadDeIngredientesDePocion() + fuerza
		resistencia = resistencia * 2
	}
}

object hongosSilvestres{
	
	
	method efectosEn(persona){
		persona.aumentarFuerzaPorHongos()		
	}
	
}


object grog {
	
	
	method efectoEn(persona, pocion){
		persona.sumateFuerzaPorCantidadDeIngredientes(pocion)
		
	}
	
}

object grogXD {
	
		method efectoEn(persona, pocion){
		persona.sumateFuerzaPorCantidadDeIngredientesYDuplicarResistencia(pocion)
		
	}
	
}
//Calcular el poder de un ejército, siendo éste la sumatoria de los poderes de todos sus integrantes que no están fuera de combate.


class Ejercito {
	
	var property integrantes = [] // las personas que vayamos creando en la consola
			
	
	method calcularPoder(){
		
	}
	
	
	
	
}