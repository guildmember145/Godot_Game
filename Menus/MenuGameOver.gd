extends Control

export var niveles = ""

func _ready():
	niveles = PlayerDatos.niveles
	PlayerDatos.reset()


func _on_Continuar_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://juego/Niveles/Level_One.tscn")


func _on_MenuPrincipal_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://Menus/MenuPrincipal.tscn")
