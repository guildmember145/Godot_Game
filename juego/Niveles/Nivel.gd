extends Node


export var menu_game_over = "res://Menus/MenuGameOver.tscn"
export var niveles = ""

var numero_llaves = 0
var contenedor_llaves
var portal

func _ready():
# warning-ignore:return_value_discarded
	PlayerDatos.connect("game_over", self, "game_over")
	contenedor_llaves = get_node_or_null("Zanahorias")
	if contenedor_llaves !=null:
		numero_llaves_nivel()
	

func numero_llaves_nivel():
	numero_llaves = contenedor_llaves.get_child_count()
	PlayerDatos.contabilizar_llaves(numero_llaves)
	for llave in contenedor_llaves.get_children():
		llave.connect("consumida", self, "llaves_restantes")
	
	
func llaves_restantes():
	numero_llaves -= 1
	if numero_llaves == 0:
		portal = get_node_or_null("Portal")
		portal.portal_activo()
		


func game_over():
	PlayerDatos.niveles = niveles
# warning-ignore:return_value_discarded
	get_tree().change_scene(menu_game_over)
	
