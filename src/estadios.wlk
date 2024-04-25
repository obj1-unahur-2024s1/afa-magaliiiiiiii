object bombonera {
	
	method capacidad()= 50000
	method alquilerEstadio()=20
}


object monumental{
	 const capacidadTotal=1000000
	 var capacidadDeAvance=55
	
	method capacidad()=capacidadTotal * capacidadDeAvance/ 100
	
	method nuevosAvances(){capacidadDeAvance=100.min(capacidadDeAvance+5)} // incremento de a 5
	
	method alquilerEstadio()=50
}