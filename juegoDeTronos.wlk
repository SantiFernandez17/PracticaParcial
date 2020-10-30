class Personajes {
	
	var property casaALaQuePertenece 
	
	var property conyugues = 0
	
	var property acompaniantes = []
	
	
	method agregarAcompaniantes(unPibe){
		acompaniantes.add(unPibe)	
		
	}
	method estaSolo(){
		
		return self.noTieneAcompaniantes()
	
	}
	
	method noTieneAcompaniantes(){
		
	return acompaniantes == []
	
	}
	method perteneceA(casa){
		
		return self.casaALaQuePertenece(casa)
		
	}
	method TieneUnaSolaPareja(){
		if(self.perteneceA(lannister)){
			(self.conyugues()).max(1)
		}	 
	}
	
	method noEstaCasadaConOtraPersonaDeLaMismaCasa(persona1, persona2, casa){
		return (conyugue.suConyuguePerteneceA(casa)) && (self.casaALaQuePertenece() == casa)
		
	}
	
	method seCasaConUna(){
		
		conyugues += 1
	}
	
	method patrimonio(casaAQuePertenece){
		
		return casaAQuePertenece.patrimonioDeLaCasa() / casaAQuePertenece.miembros()
		
	}
	
	method quienesSonSusAcompaniantes(){
		return 
	}
	
}

object conyugue {
	
	var property casa
	
	method suConyuguePerteneceA(casaALaQuePertenece){
		
		return self.casa() == casaALaQuePertenece
		
	}
	
}


class Casa {
	
	var property cantidadDeDinero
	
	var nombreDeLaCiudad
	
	const property miembros = []


	method esRica(){
		
		return self.cantidadDeDinero() > 1000
		
	}
	
	method patrimonioDeLaCasa(){
		
		return cantidadDeDinero
		
	}
 	method puedeCasarse(persona) {


	}

}

object lannister inherits Casa {
	
	override method puedeCasarse(persona){
		
		 persona.TieneUnaSolaPareja()
		
	}
	
}

class Stark inherits Casa{
	
	method puedenCasarse(persona, persona2, casa) {
		
	persona.noEstaCasadaConOtraDeLaMismaCasa(persona, persona2, casa)
		
	}
}

object guardiaDeLaNoche inherits Casa {
	
	
	 method puedenCasarse(persona1, persona2){
		
		return false
		
	}
}


