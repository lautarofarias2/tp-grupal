

class Formacion {
  const vagones = []

  method pasajerosQueLleva() = vagones.map({v => v.cantPasajeros()}).sum()

  method vagonesPopulares() = vagones.count({v => v.cantPasajeros() >= 50})

  method esFormacionCarguera() = vagones.all({vagones.capacidadCarga() >= 1000})

  method dispersionPeso() = vagones.max() - vagones.min()

  method cantBanios() = vagones.count(self.cantBanios())

  method mantenimiento() = vagones.forEach({x => x.mantenimiento() })

  method estaEquilibrada(){
      const vagonesConPasajeros = vagones.filter({v => v.cantPasajeros() > 0})
      const cantVagonConMasPasajero = vagonesConPasajeros.max()
      const cantVagonConMenosPasajero = vagonesConPasajeros.max()

      return (cantVagonConMasPasajero - cantVagonConMenosPasajero) <= 20
  }
  method estaOrganizada(){
      const cantidadDeVagonesConPasajeros = vagones.count({v => v.cantPasajeros > 0})

      return vagones.take(cantidadDeVagonesConPasajeros).all({v => v.cantPasajeros >  0}) or cantidadDeVagonesConPasajeros == 0
  }
}


class VagonPasajero{
  const property ancho 
  const property largo
  var estaOrdenado
  const property tieneBanios

  method estaOrdenado() = estaOrdenado
  
  method cantPasajeros(){
    var cantidad = 0
    if(self.ancho()<= 3){
      cantidad = self.alto() * 8
    }else{
      cantidad = self.alto() * 10
    }
    if( not self.estaOrdenado()) {self.cantPasajeros() - 15} 
    return cantidad
  }

  method capacidadCarga(){
    var capacidad = 0
    if(tieneBanios){
      capacidad = 300
    }else{
      capacidad = 800
    }
    return capacidad
  }

  method pesoMaximo(){
    return 2000 + self.cantPasajeros() * 80 + self.capacidadCarga()
  }

  method mantenimiento(){
    estaOrdenado = true
  }
  }

class VagonCarga{
  const property cargaMaximaIdeal 
  var maderasSueltas

  method tieneBanios() = false

  method maderasSueltas() = maderasSueltas

  method cantPasajeros() = 0
  
  method capacidadCarga(){
    return self.cargaMaximaIdeal() - maderasSueltas * 400
  }

  method pesoMaximo(){
    return 1500 + self.capacidadCarga()
  } 

  method mantenimiento(){
    maderasSueltas = 0.max(maderasSueltas - 2)
  }  
}

class VagonDormitorio{
  const property compartimientos 
  const property camasPorCompartimiento
  
  method tieneBanios() = true 

  method cantPasajeros() = self.compartimientos() * self.camasPorCompartimiento()

  method capacidadCarga() = 1200

  method pesoMaximo() = 4000 + self.cantPasajeros() * 80 + self.capacidadCarga()

  method mantenimiento(){

  }
}