object cosas {
    var listaDeCosas = []
}

object knigthRide{
    method peso()= 500
    method nivelPeligrosidad() = 10
}

object bumblebee{
    var nivelPeligrosidad 
    method transfomateEnAuto() { nivelPeligrosidad = 15 }
    method transfomateEnRobot(){ nivelPeligrosidad = 30 }
   
    method peso() = 800
    method nivelPeligrosidad() = nivelPeligrosidad 
}

object paqueteDeLadrillos{
    var cantidad 
    method cantidadDeLadrillos(unaCantidad) {cantidad =unaCantidad}
    method nivelPeligrosidad() = 2
    method peso() = cantidad * 2
}

object arenaAGranel{
    var peso 
    method modificarPeso(unaCantidad) = { peso = unaCantidad } 
    method nivelPeligrosidad = 1
    method peso()= peso
}

object bateriaAntiAerea{
    var peso = 200
    var estaArmada = false
    var nivelPeligrosidad = 0
    
    method peso() = estaArmada ? 200 : 300

    method agregarMisiles() { estaArmada = true }
    method quitarMisiles() { estaArmada = false }
    method nivelPeligrosidad() = estaArmada ? 100 : 0
}

object contenedor{
    var listaDeCosas = []
    method agregarCosas(unaCosa) {listaDeCosas.add(unaCosa)}
    method peso() = 100 + listaDeCosas.sum({c=>c.peso()})
    method nivelPeligrosidad() = 
         listaDeCosas.size() ? 0 :listaDeCosas.max({c=>c.nivelPeligrosidad()}) 
}

object residuosRadiactivos{
    var peso = x
    var nivelPeligrosidad = 200 
}

object embalaje{
    var cosa 
     
    method embalar (unaCosa){ cosa = unaCosa }
    method nivelPeligrosidad() = cosa.nivelPeligrosidad()/2
    method peso() = cosa.peso()
}