extends Area2D

onready var animacion = $AnimationPlayer
onready var animacion_comp = $AnimatedSprite
var esta_activado = false
export var proximo_nivel = ""


func _on_body_entered(body):
	if esta_activado:
		body.entrar_portal(global_position)
		yield(get_tree().create_timer(1.0), "timeout")
		cambiar_nivel()

func cambiar_nivel():
	get_tree().change_scene(proximo_nivel)

func portal_activo():
	esta_activado = true
	animacion_comp.play("default")
	animacion.play("activado")
	
	
