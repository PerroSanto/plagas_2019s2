import elementos.*

class Plagas{
	var property poblacion = 0
	method transmiteEnfermedades(){
		return poblacion >= 10
	} 
	method alAtacar(){
		poblacion += poblacion * 0.1
	}
	method atacarElemento(unElemento){
		unElemento.recibeAtaqueDe(self)
		self.alAtacar()
	}
}


class Cucarachas inherits Plagas{
	var property pesoPromedio = 0
	override method transmiteEnfermedades(){
		return super() and pesoPromedio >= 10
	}
	method danio(){
		return poblacion / 2
	}
	override method alAtacar(){
		super()
		pesoPromedio += 2
	}
}


class Mosquitos inherits Plagas{
	override method transmiteEnfermedades(){
		return super() and (poblacion % 3 == 0)
	}
	method danio(){
		return poblacion
	}
}

class Pulgas inherits Plagas{
	method danio(){
		return poblacion * 2
	}
}


class Garrapatas inherits Pulgas{
	override method alAtacar(){
		//tambien prodria haber hecho "super() * 2"
		poblacion += poblacion * 0.2
	}
}
