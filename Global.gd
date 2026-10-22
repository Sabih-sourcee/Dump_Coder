extends Node

var transition_scene = preload("res://CanvasLayer.tscn")
var transition_instance = null
var spawn_position = Vector2(0, 0)

func change_scene_with_transition(target_scene: String) -> void:
	if transition_instance == null:
		transition_instance = transition_scene.instantiate()
		get_tree().root.add_child(transition_instance)
	transition_instance.transition_to(target_scene)
	
