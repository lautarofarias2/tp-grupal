import empleados.*

object cadbury{
    var cantFeature = 5
    const empleados =[] //cambio var por una lista constante
    
    //Se estima que tiene, en total, 5 features y puede tener un único empleado.
    method cantFeature() = cantFeature
    method cantEmpleados() = empleados.size() // cambio por cant de elementos en la lista empleados
    method asignarEmpleado(empleado){ empleados.add(empleado) } // agrego metodo para agregar un empleado
    method avanzarUnDia() {
        0.max((self.cantFeature() - empleados.sum({x  => x.rendimientoDiario()}) ))
    }
    method despedirEmpleado(empleado){empleados.remove(empleado)}
    //method resolverFeatures(unaCantidad){} Ya esta hecho el metodo avanzarUnDia() que es igual.
    method proyectoFinalizado() = cantFeature == 0 // si la cant de features es 0 entonces el proyecto finalizo
    method motivarEmpleados(){
        empleados.forEach({empleado => empleado.motivar()})
    }
}


object vaporware {
    var cantFeature = 20
    const empleados =[] // cambio var por una lista constante
    method avanzarUnDia() {
        self.resolverFeatures(empleados.sum({x  => x.rendimientoDiario()}))
    }
    method asignarEmpleado(empleado){
        empleados.add(empleado)
    }
    method cantEmpleados() = empleados.size() // agrego metodo
    method despedirEmpleado(empleado){empleados.remove(empleado)}// agregue metodo despedir
    method cantFeature() = cantFeature
    method resolverFeatures(unaCantidad) {
        cantFeature = 0.max(cantFeature - unaCantidad)
        cantFeature = cantFeature + unaCantidad * 2
    }
    method proyectoFinalizado() = cantFeature == 0 // si la cant de features es 0 entonces el proyecto finalizo
    method motivarEmpleados(){
        empleados.forEach({empleado => empleado.motivar()})
    }
}

object verduleria {
    var cantDias = 10 
    const empleados = [] //cambio var por una lista constante

    method cantFeature() = 0
    method cantDias() = cantDias 
    method cantEmpleados() = empleados.size()

    method avanzarUnDia() {
        cantDias = 0.max(cantDias  - 1)
    }
    method asignarEmpleado(empleado){
        empleados.add(empleado)
    }
    method despedirEmpleado(empleado){empleados.remove(empleado)}// agregue metodo despedir
    //se estima que va a tardar 10 días en terminarse independientemente de que tenga empleados.
    method proyectoFinalizado() = cantDias == 0 // si la cant de features es 0 entonces el proyecto finalizo
    method motivarEmpleados(){
        empleados.forEach({empleado => empleado.motivar()})
    }
}