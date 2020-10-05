import bicis.*

class Farolito {
	method peso() { return 0.5 }
	method carga() { return 0 }
	method esLuminoso() { return true }
}

class Canasto {
	var property volumen = 0
	
	method peso() { return volumen / 10 }
	method carga() { return volumen * 2 }
	method esLuminoso() { return false }
}

class Morral {
	var property largo = 0
	var property tieneOjoDeGato = true
	
	method peso() { return 1.2 }
	method carga() { return largo / 3 }
	method esLuminoso() { return tieneOjoDeGato }
}

//PUNTO 5: Una pregunta
/*
 * Para agregar un nuevo accesorio simplemente creamos una nueva clase u objeto (segun el caso) 
 * con el nombre del accesorio nuevo.
 * Esta debe contener los mismos métodos de los accesorios existentes: peso(), carga() y esLuminoso()
 */
//accesorios
const farolito = new Farolito()
const canasto1 = new Canasto(volumen=8)

const morral1 = new Morral(largo=21, tieneOjoDeGato=true)

const morral2 = new Morral(largo=6, tieneOjoDeGato=false)