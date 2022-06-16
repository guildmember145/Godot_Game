extends Node
signal game_over()
signal actualizar_datos()

var vidas = 3
var llaves = 0
var mon_oro = 0
var mon_plata = 0
var mon_bronce = 0
var niveles = ""
var puntaje = 0

func reset():
	vidas = 3
	mon_bronce = 0
	mon_plata = 0
	mon_bronce = 0


func restar_vidas():
	vidas -=1
	if vidas == 0:
		emit_signal("game_over")

	emit_signal("actualizar_datos")
	
	
func sumar_monedas(moneda):
	match moneda:
		"bronce":
			mon_bronce += 1
		"plata":
			mon_plata +=1
		"oro":
			mon_oro +=1
		_:
			print("Error")
	emit_signal("actualizar_datos")
	
	
	
func contabilizar_llaves(valor):
	llaves = valor
	emit_signal("actualizar_datos")
	
func restar_llaves():
	llaves -= 1
	emit_signal("actualizar_datos")
	
	
func generar_puntaje():
	var valor_oro =  mon_oro *10
	var valor_plata = mon_plata *5
	var valor_bronce = mon_bronce * 2
	puntaje = valor_oro + valor_plata + valor_bronce
	return puntaje
