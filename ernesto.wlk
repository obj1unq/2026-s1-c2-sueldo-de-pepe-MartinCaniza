import categorias.*
import bonos.*

// metodo para faltas = 0?
object ernesto{

    var compañero = pepe
	var bonoPresentismo = bonoNulo

    method compañero(_compañero){

        compañero = _compañero
    }

    method sueldoNeto(){

        return compañero.sueldoNeto()

    }

    method sueldo(){

        return self.sueldoNeto() + bonoPresentismo.monto(self)
    }

    method bonoPresentismo(_bonoPresentismo){

        bonoPresentismo = _bonoPresentismo

    }



}