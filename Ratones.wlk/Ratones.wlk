class Mickey {
	
	var property plata
	
	method hacerInversiones(algoAInvertir){
		return self.puedePagarInversionDe(algoAInvertir)
	
	}
	
	method puedePagarInversionDe(algoAInvertir){
		return plata >= algoAInvertir.plataNecesariaParaRealizarInversion()
		
	}
	
	method comprarUnaCompania(){
		
		
	}
	
	method realizarAccionesNAZI(algoAInvertir){
		if(plata > 0){
			return self.hacerInversiones(algoAInvertir)
			
		}else{
			return self.error("Me quede sin guita")
		}
		
	}
	
//Comprar una compañía: Las compañías existentes conocen las películas que realizaron y cada película
//tiene su recaudación. Cada compañía cuesta un porcentaje de la recaudación total de sus películas, y
//este porcentaje es propio de la compañía
}

class Companias {
	
	var property recaudacionPorPeliculasHechas = []// es una lista de precios
	
	var property porcentajeDeRecaudacion
	
	method costoDeLaCompania(){
		return (recaudacionPorPeliculasHechas.sum()) / porcentajeDeRecaudacion
	}
	
	method plataNecesariaParaRealizarInversion(){
		return self.costoDeLaCompania()
	}
}

class ParqueDeDiversiones {
	
	var property costoXAtracciones = [] // es una lista de precios
	
	var property metrosCuadradosDelParque
	
	method plataNecesariaParaRealizarInversion(){
		return costoXAtracciones.sum() + metrosCuadradosDelParque
		
	}
	
}

//Producir una película: Tiene un costo de producción, al que se le suma el sueldo de cada personaje.
//Además existen películas independientes, en las sólo que se paga a los 4 personajes de mayor sueldo,
//además del costo de producción.

class Pelicula {
	
	var costoDeProduccion
	
	var property actores = []
	
	method plataNecesariaParaRealizarInversion(){
		
		
	}
	
	method sueldoDeActores(){
		return actores.map({unActor => unActor.darSueldo()})
	}
	
	method darSueldo(actor, dinero){
		actor.sumateTuSueldo(dinero)
	}
	
	
	
	method costoDeProduccion(){
		return costoDeProduccion + self.sueldoDeActores()
	}
}

class Actor {
	
	var property fondosPorPelicula = []
	
	method sumateTuSueldo(dinero){
		 fondosPorPelicula.add(dinero)
		
	}
}

object peliculaIndependiente inherits Pelicula {
	
	
	//override method costoDeProduccion(){
		
		
	//}
}

object flautista {
	
	method tocarLaFlauta(){
		ratonesAmbiciosos.realizarAccionesNAZI()
	}
	
}
