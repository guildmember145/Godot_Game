extends StaticBody2D

onready var colisionador = $Colisionador
onready var animacion = $AnimationPlayer
onready var detector_col = $Detector_personaje/Colision_Suelo

func _on_body_entered(body):
	animacion.play("caer")
	
	
func desabilitar_colisionador():
	detector_col.set_deferred("disabled", true)
	colisionador.set_deferred("disabled", true)
	
