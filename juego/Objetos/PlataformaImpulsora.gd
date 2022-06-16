extends Area2D

onready var animacion = $AnimationPlayer
onready var sonido_impulsor = $Impulsor

func _ready():
	animacion.play("idle")

func _on_DetectorImpulso_body_entered(body):
	sonido_impulsor.play()
	animacion.play("impulsar")
	body.impulsar()
