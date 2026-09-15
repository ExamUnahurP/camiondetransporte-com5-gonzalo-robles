
object camion {
    //var esPeligrosa = true
    var pesoCarga = 0
    var cosas =[]
    // peso maximo 2500
    // 
    method cargarCosas(unaCosa){cosas.add(unaCosa)}
    method descargar(){}

    method peso() = 1000 + cosas.sum(c=>c.peso())
    
    method pesoActual(){}
    method cargasPar(){}

}

// cosas que puede descargar

