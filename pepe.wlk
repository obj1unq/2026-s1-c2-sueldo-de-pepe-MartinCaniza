import categorias.*
import bonos.*

object pepe {
	var categoria = gerente
	var bonoPresentismo = bonoNulo
	var bonoResultado = bonoNulo
	var cantidadDeFaltas = 0
	
	method cantidadDeFaltas() { return cantidadDeFaltas }

	method categoria(_categoria){

		categoria = _categoria

	 }

	method bonoPresentismo(_bonoPresentismo){

		bonoPresentismo = _bonoPresentismo

	}

	method bonoResultado(_bonoResultado){

		bonoResultado = _bonoResultado

	}

	method cantidadDeFaltas(_cantidadDeFaltas){

		cantidadDeFaltas = _cantidadDeFaltas
	}

	method sueldoNeto() { return categoria.neto() }


	method sueldo() {
		
		return self.sueldoNeto() + bonoPresentismo.monto(self) + bonoResultado.monto(self)
		
		/* notar que todos los bonos entienden el mensaje monto(empleado)
		 * en este caso ¿quién es el empleado? --> Es pepe. Preguntar si self como argumento es válido (supongo que si?).
		 */ 
	}
	
}
