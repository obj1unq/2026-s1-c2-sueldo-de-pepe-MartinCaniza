import categorias.*
import bonos.*

object sofia{

    var categoria = cadete
    var bonoResultado = bonoNulo

    method sueldoNeto(){

        return categoria.neto() * 1.3
    }

    method sueldo(){

        return self.sueldoneto() + bonoResultado.monto(self)

    }
}
//-test github asds