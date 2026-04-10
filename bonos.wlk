// bono por resultados por porcentaje
object bonoPorcentaje {
	method monto(empleado) { return empleado.neto() * 10 / 100 }
}


// bono por resultados de monto fijo
object bonoMontoFijo {
	var montoFijo = 800
	method monto(empleado) { return montoFijo }
}


// agregar bonos por presentismo  
object bonoPresentismoNormal {
	
	var bonoSinFaltas = 2000
	var bonoUnaFalta = 1000

	method monto(empleado){ 

		if (empleado.faltas() == 0){

			return  bonoSinFaltas

		}
		else if (empleado.faltas() == 1){

			return bonoUnaFalta
		
		}
		else{
			
			return bonoNulo.monto(empleado)
		
		}

	}

}
// agregar bonos ajuste y demagogico
object bonoAjuste{
	var bonoSinFaltas = 100

	method monto(empleado){

		if (empleado.faltas() == 0 ){

			return bonoSinFaltas
		}
		else{

			return bonoNulo.monto(empleado)

		}

	}
} 

object bonoDemagogico{
	
	var bonoMontoMayor = 500
	var bonoMontoMenor = 300

	method monto(empleado){

		if (empleado.neto() < 18000){

			return bonoMontoMayor

		}
		else{

			return bonoMontoMenor
			
		}
	}
}





/*
 * Bono nulo: sirve para resultados y para presentismo, cuando el importe es 0 
 * (o "nada")
 */
object bonoNulo {
	method monto(empleado) { return 0 } 
}



