import jugadores.*
import estadios.*
/// hecho en clase
object afa {
	var plataAcumulada=0
	var jugadorActual= messi
	var estadioActual= bombonera     //hacemos variable a los objetos, para hacerlo mas generico
	
	method jugadorActual()= jugadorActual
	method nuevoJugador(unJugador){jugadorActual= unJugador}
	
	method estadioActual()= estadioActual
	method nuevoEstadio(unEstadio){  estadioActual= unEstadio}
	
	method precioDeEntrada(){ return 100000*inflacion.inflacionActual()}   // tambien se podria pone como una constante
	
	

	method cantidadDeVentas(){
	return	bombonera.capacidad()* jugadorActual.popularidad()/ 100
	} 
	
	method totalRecaudado(){
		return self.precioDeEntrada() * self.cantidadDeVentas() 
	}
	
	method valorEvento()=10000000
	
	method gananciaNEta(){return 0.max(self.totalRecaudado()- self.costoDelEvento())}
	
	method costoDelEvento(){
		return self.valorEvento() + jugadorActual.viaticos()+ estadioActual.alquilerEstadio()
	}
	
	method gananciaPorPartido(){plataAcumulada= plataAcumulada+self.gananciaNEta()}
}


object inflacion{     /// no tiene sentido meter una vaiable inflacion dento de afa que no tiene nada que ver
	method inflacionActual()=1.5   // para q represente un porcentaje de aumento del 50%
	
}