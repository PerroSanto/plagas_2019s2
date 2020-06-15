import plagas.*

class Barrio{
	var property elementos = []
	method esCopado(){
		return elementos.count({cosa => cosa.esBuena()}) > elementos.count({cosa => not cosa.esBuena()}) 
	}
}


class Hogar {
	var property mugre = 0
	var property confort = 0
	
	method esBuena(){
		return mugre  <= (confort/2)
	}
	method recibeAtaqueDe(unaPlaga){
		mugre += unaPlaga.danio()
	}	
}

class Huerta{
	var property capacidad = 0
	var property nivel = 0
	
	method esBuena(){
		return capacidad > nivel
	}
	method recibeAtaqueDe(unaPlaga){
		capacidad -= (unaPlaga.danio() * 0.1)
		if(unaPlaga.transmiteEnfermedades()){
			capacidad -= 10
		}
	}
}

class Mascota{
	var property salud = 0
	method esBuena(){
		return salud > 250
	}
	method recibeAtaqueDe(unaPlaga){
		if(unaPlaga.transmiteEnfermedades()){
			salud -= unaPlaga.danio()
		}
	}
}
