
object camion {
    //var esPeligrosa = true
    var pesoCarga = 0
    var cosas =[]
    var listaQueSuperaNiveles = []

    method cargarCosas(unaCosa){cosas.add(unaCosa)}
    method descargar(unaCosa){}

    method peso() = 1000 + cosas.sum({c=>c.peso()})
    
    method sonPares() = cosas.all({ c=>c.peso()%2 == 0})
    method pesaValor(unValor) = cosas.all({c=>c.peso()== unValor})
    method nivelPeligrosidadDelBuscado(unNivel) = cosas.findOrElse({c=>c.nivelPeligrosidad() == unNivel}, 0)
    
    method superanNivel(unNivel) {
       listaQueSuperaNiveles = cosas.map({c=>c.nivelPeligrosidad() > unNivel })}

}

// cosas que puede descargar
