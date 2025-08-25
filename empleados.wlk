object galvan {
   var sueldo = 15000
   var deuda = 0
   var dinero = 0
   
   method sueldo() {
    return sueldo
  }
   
   method sueldo(nuevoSueldo) {
    sueldo = nuevoSueldo    
  
  }

   method cobrarSueldo() {
      dinero = dinero + sueldo
      self.pagarDeudas()
  }

   method deuda() {
      return deuda
     
   }

   method dinero() {
      return dinero
     
   }

   method gastar(cantidad) {
      if (dinero >= cantidad) {
         dinero = dinero - cantidad

      }
      else {
         deuda = deuda + (cantidad - dinero)
      dinero = 0 
      }


   }

   method pagarDeudas() {
      if (dinero >= deuda ) {
         dinero = dinero - deuda 
         deuda = 0
      }
      else {
         deuda = deuda - dinero
         dinero = 0
      }
     
   }

}

object baigorria {
  var cantidadDeEmpanadasVendidas = 0
  const precioPorUnidad = 15
  var totalQueCobre = 0 

  method venderEmpanada (cantidadDeEmpanada) {
    cantidadDeEmpanadasVendidas = cantidadDeEmpanadasVendidas + cantidadDeEmpanada 
  }

  method sueldo () {
    return cantidadDeEmpanadasVendidas * precioPorUnidad 
    
  }
  method cobrarSueldo() {
    totalQueCobre = totalQueCobre + self.sueldo()
    cantidadDeEmpanadasVendidas = 0
    
  }
  method totalCobrado() {
    return totalQueCobre
    
  }
}

object gimenez {
  var plata = 300000 

  method plata () {
    return plata
   }  

  method pagarSueldoA(empleado) {
    plata = plata - empleado.sueldo()
    empleado.cobrarSueldo()
  
  }

  

}
