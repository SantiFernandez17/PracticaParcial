class Juego{
	
	const property numeros = [1,2,3]
	
	
	method numeroDeSombreroDondeEstaLaMoneda(){
		return self.voltearLosSombreros()
	}
	
	method apostar(cantidadDePlata,numero){
		if(numero == self.numeroDeSombreroDondeEstaLaMoneda()){
			return cantidadDePlata * 2
		}
		else{
			return cantidadDePlata == 0
		}
		
	}
		
	method voltearLosSombreros(){
		return numeros.anyOne()
		
	}
}

class Persona{
	

}