import bicis.*
import accesorios.*

class Depo {
	var property coleccionDeBicis = []
	var property parDeCompanieras = []
	method bicisRapidas() { return coleccionDeBicis.filter({bici=> bici.velocidadCrucero() > 25}) }
	method marcas() { return coleccionDeBicis.map({bici=> bici.marca()}).asSet() }
	method esNocturno() { return coleccionDeBicis.all({bici=> bici.tieneLuz()}) }
	method tieneBiciParaCargar(kgs) { return coleccionDeBicis.any({bici=> bici.carga() > kgs}) }
	method marcaDeBiciMasRapida() { return coleccionDeBicis.max({bici=>bici.velocidadCrucero()}).marca() }
	method totalCargaDeBicisLargas() { return coleccionDeBicis.filter({bici=> bici.largo() > 170}).sum({bici=> bici.carga()}) }
	method cantBicisSinAccesorios() { return coleccionDeBicis.count({bici=>bici.accesorios().isEmpty()}) }
	
	method biciCompanieraDe(bici) { 
		const bicisMismaMarca = coleccionDeBicis.filter({b=> b.marca() == bici.marca()})
		const bicisCompanieras = bicisMismaMarca.filter({b=> (b.largo() - bici.largo()).abs() <= 10})
		if (bicisCompanieras.contains(bici)) {
			bicisCompanieras.remove(bici)
		}
		if (bicisCompanieras.isEmpty()) {
			parDeCompanieras.addAll([bici, bicisCompanieras])
		}
		return bicisCompanieras
	}
	method hayCompanieras() { 
		return parDeCompanieras.size() >=2
	}
	//falta method parejasDeCompañeras
	//no hay metodo que devuelva el indice de un elemento????
	/*method seHizoLaLuz() {
		const primeraLuz = coleccionDeBicis.first({b=>b.tieneLuz()}). 
		
	}
	
}*/

const depo1 = new Depo(coleccionDeBicis = [bici1, bici2, bici3, bici4])

const depo2 = new Depo(coleccionDeBicis = [bici1, bici2])