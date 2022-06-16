extends Area2D
onready var animacion = $AnimationPlayer
onready var detector = $Colisionador
signal consumida()




func _on_body_entered(body):
	PlayerDatos.restar_llaves()
	emit_signal("consumida")
	detector.set_deferred("disabled", true)
	animacion.play("consumir")
	
	
	
