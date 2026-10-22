extends CanvasLayer

signal transition_finished


# Called when the node enters the scene tree for the first time.
func transition_to(target_scene: String) -> void:
	$AnimationPlayer.play("matrix_in")
	await $AnimationPlayer.animation_finished
	get_tree().change_scene_to_file(target_scene)
	$AnimationPlayer.play("matrix_out")
