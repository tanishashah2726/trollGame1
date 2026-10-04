extends CanvasLayer


func _on_level_menu_btn_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/other/level_menu.tscn")
