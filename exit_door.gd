extends Area2D

var can_enter = false

func _ready() -> void:
	await get_tree().create_timer(0.5).timeout
	can_enter = true

func _on_body_entered(body: Node2D) -> void:
	if body.name == "CharacterBody2D" and can_enter:
		Global.spawn_position = Vector2(0, 0)  # replace with street spawn coords
		Global.change_scene_with_transition("res://street.tscn")