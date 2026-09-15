object cosas {
    var listaDeCosas = []
}

object knigthRide{
    method peso()= 500
    method nivelPeligrosidad =10
}

object bumblebee{
    var nivelPeligrosidad = 15
 // 30 si es robot 15 si es auto

    method cambiaRobot() { nivelPeligrosidad = 30}
    method peso() = 800
    method nivelPeligrosidad = { nivelPeligrosidad }
}

object paqueteDeLadrillos{
    var peso = 2
    var cantidad = 10
    method nivelPeligrosidad = 2
    method peso() = cantidad * peso
}

object arenaAGranel{
    var peso = 1
    method nivelPeligrosidad = 1
}

object bateriaAntiAerea{
    var peso = 200
    var estaArmada = false
    var nivelPeligrosidad = 0
    
    method peso() = peso 
}

object contenedor{
    var listaDeCosas = []

    method peso() = 100  ///
}

object residuosRadiactivos{
    var peso = x
    var nivelPeligrosidad = 200 
}

object embalaje{
    var cosa 
    
    method embalar (unaCosa){
        cosa = unaCosa
    }
    method nivelPeligrosidad() = cosa.nivelPeligrosidad()/2
}