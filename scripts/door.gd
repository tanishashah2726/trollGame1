extends Area2D



func _on_body_entered(body: Node2D) -> void:
	var current_scene_file = get_tree().current_scene.scene_file_path
	var next_level_num = current_scene_file.to_int() +1
	
	var next_level_path = "res://scenes/levels/level" + str(next_level_num) + ".tscn"
	
	get_tree().call_deferred("change_scene_to_file",next_level_path)
