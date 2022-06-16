extends Control

onready var etiqueta_vidas = $ContenedorVidas/Cantidad
onready var etiqueta_llaves = $ContenedorLlaves/Cantidad
onready var etiqueta_oro = $ContenedorOro/Cantidad
onready var etiqueta_bronce = $ContenedorBronce/Cantidad
onready var etiqueta_plata = $ContenedorPlata/Cantidad

func _ready():
# warning-ignore:return_value_discarded
	PlayerDatos.connect("actualizar_datos", self, "actualizar_hud")
	actualizar_hud()

func actualizar_hud():
	etiqueta_vidas.text = "%s" % PlayerDatos.vidas
	etiqueta_llaves.text = "%s" % PlayerDatos.llaves
	etiqueta_oro.text = "%s" % PlayerDatos.mon_oro
	etiqueta_plata.text = "%s" % PlayerDatos.mon_plata
	etiqueta_bronce.text = "%s" % PlayerDatos.mon_bronce
	etiqueta_llaves.text = "%s" % PlayerDatos.llaves
	
	
	


	
	
	
