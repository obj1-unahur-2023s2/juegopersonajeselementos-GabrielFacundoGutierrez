import armas.*
import elementos.*

object  luisa {
	var personajeActivo = floki
	
	method asignarPersonaje(personaje) {
		personajeActivo = personaje
	}
	method apareceElemento(elemento) {
		if(personajeActivo != null) {
		personajeActivo.encontrar(elemento)
	}
	}
}

object  floki {
	var arma = ballesta
	method encontrarElemento(elemento) {
		if (arma.estaCargada()) {
			elemento.recibirAtaque(arma.potencia())
			arma.registrarUso()
		}
	}
}

object mario {
	var valorRecolectado = 0
	var ultimoElementoRecolectado = castillo
	method encontrarElemento(elemento) {
		elemento.recibirTrabajo()
		valorRecolectado += elemento.darValor() 
		ultimoElementoRecolectado = elemento
	}
	
	method estaFeliz() {
		return valorRecolectado >= 50 or ultimoElementoRecolectado.altura() >= 10
	}
}

