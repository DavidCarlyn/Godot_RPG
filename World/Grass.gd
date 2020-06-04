extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func create_grass_effect():
	var GrassEffect = load("res://Effects/GrassEffect.tscn")
	var grass_effect = GrassEffect.instance()
	var world = get_tree().current_scene
	world.add_child(grass_effect)
	grass_effect.global_position = global_position

func _on_Hurtbox_area_entered(area):
	queue_free()
	create_grass_effect()
