import categorias.*
import bonos.*

object roque{
    
    var neto = 28000
    var bonoResultado = bonoNulo

    method sueldoNeto(){

        return neto
    }

    method sueldo(){

        return neto + bonoResultado.monto(self) + 9000
    }

    method bonoResultado(_bonoResultado){

        bonoResultado = _bonoResultado

    }
}

//test github