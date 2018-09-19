import golosinas.*

object mariano {
	var property golosinas = #{}
	
	method comprar(unaGolosina) {
		golosinas.add(unaGolosina)
	}
	
	method desechar(unaGolosina) {
		golosinas.remove(unaGolosina)
	}
	
	method probarGolosinas() {
		golosinas.forEach({golosina => golosina.recibeMordisco()})
	}
	
	method hayGolosinasSinTACC() = golosinas.any({golosina => !golosina.tieneGluten()})
	
	method preciosCuidados() = golosinas.all({golosina => golosina.precio() <= 10})
	
	method golosinaDeSabor(unSabor) = golosinas.find({golosina => golosina.sabor() == unSabor})
	
	method golosinasDeSabor(unSabor) = golosinas.filter({golosina => golosina.sabor() == unSabor})
	
	method sabores() = golosinas.map({golosina => golosina.sabor()}).asSet()
	
	method golosinaMasCara() = golosinas.max({golosina => golosina.precio()})
	
	method golosinasFaltantes(golosinasDeseadas) = golosinasDeseadas.difference(golosinas).asList()
	
	method mapeoDeSabores() = golosinas.map({golosina => golosina.sabor()}).asSet()
	
	method saboresFaltantes(sabores) = sabores.difference(self.mapeoDeSabores()).asSet()
	
}
