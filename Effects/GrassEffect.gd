extends Node2D

onready var animated_sprite = $AnimatedSprite

# Called when the node enters the scene tree for the first time.
func _ready():
	animated_sprite.play("Animate")



func _on_AnimatedSprite_animation_finished():
	queue_free()
