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
    
}
