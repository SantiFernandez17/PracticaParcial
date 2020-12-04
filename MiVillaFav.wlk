class Villano {


method nuevoMinion(){


}


}


object minions{
const adorables = true
const traviesas = true
var armasPortadas = []
var cantidadDeBananas


method esPeligroso(){
return self.tieneMasDeDosArmas()
}


method alimentar(){

return self.comerUnas(cantBananas)

}

method comerUnas(cantBananas){

cantidadDeBananas += cantBananas
}


method tieneMasDeDosArmas(){
return armasPortadas > 2
}

method otorgarArma(armaPiola){

armasPortadas.add(armaPiola)

}

}
