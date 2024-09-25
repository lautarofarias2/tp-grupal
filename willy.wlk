import empleados.*
import proyectos.*


object willy {
    const property listaEmpleados = []
    const property listaProyectos = []
    

    method contratarEmpleado(unEmpleado){
       listaEmpleados.add(unEmpleado)
    }

    method aceptarProyecto(unProyecto){
        //Aceptar un proyecto, asignándole instantáneamente un Oompa Loompa si lo hay.
        listaProyectos.add(unProyecto)
        //el proyecto tendria que tener una lista de empleados
        //Le estoy asignando el primer empleado que no este asignado a un proyecto
        unProyecto.asignarEmpleado(self.empleadoSinProyectosAsignados())
        self.empleadoSinProyectosAsignados().ocupar()
    }

    method empleadoSinProyectosAsignados(){
        //Subtarea para aceptar proyecto
        //return listaEmpleados.filter({empleado => empleado.empleadoOcupado()})
        return listaEmpleados.find({empleado => !empleado.empleadoOcuppado()})// find da el primer empleado desocupado
    }

    method rendimientoDiario(unEmpleado) = unEmpleado.rendimientoDiario()  //aca quizas habria que validar si esta en la lista de empleados 
    
    method avanzarProyectosUnDia(){
        listaProyectos.forEach({x => x.avanzarUnDia()})
        //todos los proyectos necesitan entender el metodo avanzar un dia
    }

    method proyectosAunNoFinalizados(){
        //todo los proyectos tienen que entender "estoyFinaliado()"
        listaProyectos.sum({proyectos => proyectos.proyectoFinalizado()})
    }

    method motivarEmpleados(){
        //TODO
        listaDeProyectos.forEach({x => x.motivarEmpleados()})
    }

    method cuantosEmpleadosHaySinProyectosAsignados(){
        //TODO
        listaDeEmpleados.sum({empleado => !empleado.empleadoOcupado()})
    }
}

