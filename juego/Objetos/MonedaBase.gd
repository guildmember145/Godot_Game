extends Area2D

export (String, "oro", "plata", "bronce") var tipo_moneda

onready var animacion = $AnimatedSprite
onready var anima_consumir = $AnimationPlayer
onready var personaje_colision = $CollisionShape2D
onready var contador := 0

func _ready():
	animacion.play()
	


func _on_body_entered(_body):
	PlayerDatos.sumar_monedas(tipo_moneda)
	personaje_colision.set_deferred("disabled", true)
	anima_consumir.play("consumir")
