
object gerente {
	method neto() { return 15000 } 
}

// agregar cadete

object cadete{


	method neto() { return 20000 }
}

object vendedor{

	var hayMuchasVentas = True

	method neto(){

		if (hayMuchasVentas){

			return 16000 * 1.25

		}else{

			return 16000

		}

	}

	method activarAumentoPorMuchasVentas(){

		hayMuchasVentas = True

	}
	method desactivarAumentoPorMuchasVentas(){

		hayMuchasVentas = False

	}

}

	//variable con la categoria en medio tiempo¿?

object medioTiempo{


	method categoriaBase(categoria){

		return categoria.neto() / 2

	}

}