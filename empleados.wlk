object juanCarlos {
    var empleadoOcupado = false
    
    method rendimientoDiario() = 1

    method empleadoOcupado(){
        return empleadoOcupado
    }

    method desocupar() {
        empleadoOcupado = false
    }

    method ocupar() {
        empleadoOcupado = true
    }

    method motivar() {}
}

object guillermoPuertas {
    var empleadoOcupado =  false
    
    var calidadDeAnteojos = 0

    method empleadoOcupado(){
        return empleadoOcupado
    }
    method desocupar() {
        empleadoOcupado = false
    }
    method ocupar() {
        empleadoOcupado = true
    }
    method motivar() {
       calidadDeAnteojos += 1// ver con el grupo
    }
    method rendimientoDiario() = calidadDeAnteojos
}

object estebanTrabajo {
    var empleadoOcupado = false
    var rendimientoDiario = 10

    method empleadoOcupado(){
        return empleadoOcupado
    }

    method desocupar() {
        empleadoOcupado = false
    }

    method ocupar() {
        empleadoOcupado = true
    }

    method rendimientoDiario() = rendimientoDiario

    method motivar() {
      rendimientoDiario -= 1
    }
}

object ricardoHombrePuesto {
    var empleadoOcupado = false

    method empleadoOcupado(){
        return empleadoOcupado
    }

    method desocupar() {
        empleadoOcupado = false
    }

    method ocupar() {
        empleadoOcupado = true
    }
    method rendimientoDiario() = 0
    method motivar() { }
}

object pepita{
    var empleadoOcupado = false 
    //aca tendria que hacer el calculo el programa, no poner que si come 1000 obtiene 2
    var calorias = 0

    method empleadoOcupado(){
        return empleadoOcupado
    }

    method desocupar() {
        empleadoOcupado = false
    }

    method ocupar() {
        empleadoOcupado = true
    }

    method rendimientoDiario() = calorias / 500

    method motivar() {
        self.comer(1000)
    }

    method comer(cantidad){
        calorias += cantidad
    }

}