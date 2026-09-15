
object camion {
    //var esPeligrosa = true
    var pesoCarga = 0
    var cosas =[]
    // peso maximo 2500
    // 
    method cargarCosas(unaCosa){cosas.add(unaCosa)}
    method descargar(unaCosa){}

    method peso() = 1000 + cosas.sum({c=>c.peso()})
    
    method sonPares() = cosas.all({ c=>c.peso()%2 == 0})
    method pesaValor(unValor) = cosas.all({c=>c.peso()== unValor})
    method nivelPeligrosidadDelPrimero(unNivel) = cosas.find({c=>c.nivelPeligrosidad() == unNivel})


}

// cosas que puede descargar

