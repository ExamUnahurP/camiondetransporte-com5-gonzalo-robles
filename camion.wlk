import cosas.*
object camion {
    //var esPeligrosa = true
    var pesoCarga = 0
    var cosas =[]
    var listaQueSuperaNiveles = []

    method cargarCosas(unaCosa){cosas.add(unaCosa)}
    method descargar(unaCosa){cosas.contains(unaCosa).remove()}

    method peso() = 1000 + cosas.sum({c=>c.peso()})
    
    method sonPares() = cosas.all({ c=>c.peso()%2 == 0})
    method pesaValor(unValor) = cosas.all({c=>c.peso()== unValor})
    method nivelPeligrosidadDelBuscado(unNivel) = cosas.findOrElse({c=>c.nivelPeligrosidad() == unNivel}, 0)
    
    method superanNivel(unNivel) {
        listaQueSuperaNiveles =cosas.map({c=>c.nivelPeligrosidad() > unNivel })
    }
    method mostrarListaQueSuperan()= nivelPeligrosidad
    method estaExcedido() = self.peso() >= 2500

    method puedeCircular() = ! self.estaExcedido() and (listaQueSuperaNiveles.size()>0) ? false : true 
}

