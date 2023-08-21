

object ballesta {
	var flechas = 10
	var potencia = 4
	
	method potencia() {
		return  potencia
	}
	
	method flechas() {
		return flechas
	}
	
	method estaCargada() {
		return flechas > 0
	}
	
	method registrarUso() {
		flechas = flechas - 1
	}
}

object jabalina {
	var potencia = 30
	var estaCargada = true 
	
	method estaCargada() {
		return estaCargada
	}
	method registrarUso() {
		estaCargada = false
	}
}


