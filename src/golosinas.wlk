object bombon {
	var property peso = 15
	
	method precio() = 5
	method sabor() = "frutilla"
	method tieneGluten() = false	
	
	method recibeMordisco() {
		peso -= peso * 0.2 - 1
	}
}

object alfajor {
	var property peso = 300

	method precio() = 12
	method sabor() = "chocolate"
	method tieneGluten() = true
	
	method recibeMordisco() {
		peso -= peso * 0.2
	}
}

object caramelo {
	var property peso = 5

	method precio() = 1
	method sabor() = "frutilla"
	method tieneGluten() = false
	
	method recibeMordisco() {
		peso -= 1 
	}
}

object chupetin {
	var property peso = 7

	method precio() = 2
	method sabor() = "naranja"
	method tieneGluten() = false
	
	method recibeMordisco() {
		peso -= if (peso > 2) peso * 0.1 else 0 
	}
}

object oblea {
	var property peso = 250

	method precio() = 5
	method sabor() = "vainilla"
	method tieneGluten() = true
	
	method recibeMordisco() {
		peso -= if (peso > 70) peso * 0.5 else peso * 0.25  
	}
}

object chocolatin {
	var property pesoInicial 
	var property peso 
	
	method pesoInicial(unPeso) {pesoInicial = unPeso
		                        peso = unPeso
	}
	method precio() = 0.5 * pesoInicial
	method sabor() = "chocolate"
	method tieneGluten() = true
	
	method recibeMordisco() {
		peso -= 2  
	}
}

object golosinaBaniada {
	var property golosinaBase 
	var  peso = 0
	
	method peso() = self.golosinaBase().peso() + 4
	method golosinaBase(unaGolosina) {golosinaBase = unaGolosina}
	method precio() = golosinaBase.precio() + 2
	method sabor() = golosinaBase.sabor()
	method tieneGluten() = golosinaBase.tieneGluten()
	
	method recibeMordisco() {
		golosinaBase.recibeMordisco()
		peso -=   2
	}
}


object pastillaTuttiFrutti {
	var property peso = 5
	var property sabor = "frutilla"
	var property tieneGluten = true
	var lamidas = 0
	
	method precio() = if(tieneGluten) 7 else 10
	method aumentarLamida() {lamidas += 1} 
	
	method recibeMordisco() {
		self.aumentarLamida()
		if(lamidas== 1)   {sabor = "chocolate"} 
		if(lamidas== 2) {sabor = "frutilla"} 		
		if(lamidas==3) {sabor = "naranja"}
		if(lamidas>=4) {sabor = "frutilla"}
	}
}