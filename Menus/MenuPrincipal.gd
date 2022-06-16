extends Control

export var niveles = ""


func _on_BotonIniciar_pressed():
	get_tree().change_scene(niveles)
