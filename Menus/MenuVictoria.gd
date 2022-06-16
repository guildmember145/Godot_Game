extends Control

onready var panel_puntaje = $Panel/Puntaje


func _ready():
	panel_puntaje.text = "Puntaje: {p}".format({"p": PlayerDatos.generar_puntaje()})


func _on_MenuPrincipal_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://Menus/MenuPrincipal.tscn")
