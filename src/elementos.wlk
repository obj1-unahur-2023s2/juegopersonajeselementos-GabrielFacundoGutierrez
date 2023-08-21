object castillo {
	var altura = 20
	var nivelDeDefensa = 150
	
	method altura() {
		 return altura
	}
	
	method recibirAtaque(potenciaDeAtaque) {
		nivelDeDefensa = 0.max(nivelDeDefensa - potenciaDeAtaque)
	}
	method recibirTrabajo() {
		nivelDeDefensa = 200.min(nivelDeDefensa + 20)
	}
	
	method darValor() {
		return nivelDeDefensa * 0.2
	}
}

object aurora {
	var altura = 1
	var vive = true 
	method vive() {
		return vive
	}
	
	method altura() {
		return altura
	}
	
	method recibirAtaque(potenciaDeAtaque){
		vive = potenciaDeAtaque <10 and vive 
	}
	
	method recibirTrabajo() {}
	
	method darValor() {
		return 15
	}
}

object tipa {
	var altura = 8
	
	method recibirAtaque(potenciaDeAtaque) { }
	
	method darValor() {
		return altura * 2
	}
	
	method altura() {
		return altura
	}
	
	method recibirTrabajo() {
		altura += 1
	}
}
