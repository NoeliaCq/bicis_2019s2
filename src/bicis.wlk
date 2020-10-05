import accesorios.*
class Bici {
	var property rodado = 0
	var property largo = 0
	var property marca = ""
	var property accesorios = []
	
	method altura() { return rodado * 2.5 + 15 }
	method velocidadCrucero() { return if(largo>120) {rodado + 6} else {rodado + 2} }
	method carga() { return accesorios.sum({acc=> acc.carga()}) }
	method pesoTotalAccesorios() { return accesorios.sum({acc=> acc.peso()}) }
	method peso() { return rodado / 2 + self.pesoTotalAccesorios() }
	method tieneLuz() { return accesorios.any({acc=> acc.esLuminoso()}) }
	method cantAccesoriosLivianos() { return accesorios.count({acc=> acc.peso() < 1}) }
}

//bicis
const bici1 = new Bici(rodado=28, largo=150, marca="Olmo", accesorios=[farolito])

const bici2 = new Bici(rodado=26, largo=110, marca="Legnano", accesorios=[farolito, canasto1, morral1])

const bici3 = new Bici(rodado=20, largo=90, marca="Legnano", accesorios=[morral2])

const bici4 = new Bici(rodado=20, largo=100, marca="Legnano", accesorios=[morral2, farolito])