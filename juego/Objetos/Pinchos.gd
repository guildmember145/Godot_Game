extends Area2D

export var es_trampa = false
onready var trampita = $Rota_Trampa
onready var anima = $AnimationPlayer
onready var sprite = $Sprite
var color_trampa = Color.purple

func _ready():
	if es_trampa:
		sprite.modulate = color_trampa
		trampita.enabled = true
		rotation_degrees = 180
		
func _process(_delta):
	if trampita.is_colliding():
		trampita.enabled = false
		trampita.set_deferred("enabled", false)
		anima.play("caer")
		

func _on_body_entered(body):
	body.respawn()



