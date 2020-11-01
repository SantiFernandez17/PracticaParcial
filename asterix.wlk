class Persona {
	
	var property fuerza
	
	var property resistencia
	
	var property estaEnCombate
	
	var hongosEnPuniado

	var property poderes = []


	method sumatoriaDePoderesDePersonasEnCombate(){
		if(estaEnCombate == true){
			poderes.sum()
		}else{
			
			
		}
		
		
	}
	
	method poneteFuerte(unidades){
	
	fuerza = fuerza + unidades
	
	}
	
	method despertate(){
		if(estaEnCombate.negate()){
			resistencia = resistencia + 2
		}else{
			
			
		}
	}
		 
	method dependeLosHongosQueTengasAumentarFuerza(){
		if(hongosEnPuniado > 5){
			
			fuerza = fuerza + hongosEnPuniado
			resistencia = (resistencia / 2).max(0)
			
		}else{
			
			fuerza = fuerza + hongosEnPuniado
			
		}
	}
	
	method ingerirPocionGrog(pocion){
		fuerza = fuerza * pocion.ingredientes()
		
	}
	

}

object dulceDeLeche{
	
	method aportaA(persona, unidades){
		
		return persona.poneteFuerte(unidades) && persona.despertate()

	}
}


object puniadoDeHongosSilvestres{
	
	
	method aportaA(persona){
		persona.dependeLosHongosQueTengasAumentarFuerza()
		
	}
}


class Grog {
	
	var property ingredientesQueContieneElGrog = []
	
	method ingredientes(){
		return ingredientesQueContieneElGrog.sum()
	}
	method loIngirioAlguienCon(persona){
		persona.ingerirGrog()
	}
	
}

//- Grog XD: mismo efecto que el Grog pero además duplica la resistencia.

object grogXD{
	
	var property ingredientes = []
	
	
	
}


