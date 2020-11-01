class Alquileres {
	
	var mesesDeContrato
	
	var property comisionQueCorresponde
	
	
	method comision(inmueble) {
		return (mesesDeContrato * inmueble.precio()) / 50000
		
	}


}


class Venta{
	
	var porcentajeDelInmueble
	
	
method porcentajeDelInmueble(porcentajeDeComision, inmueble) {
		return inmueble.precio() * porcentajeDeComision
	}



       




	
}


