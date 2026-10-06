extends Area2D
@onready var current_scene_file = get_tree().current_scene.scene_file_path
@onready var next_level_num = current_scene_file.to_int() +1

func _ready() -> void:
	pass
	
func _process(delta: float) -> void:
	if current_scene_file.to_int() not in LevelCore.current_levels:
		LevelCore.current_levels.append(current_scene_file.to_int())

func _on_body_entered(_body: Node2D) -> void:
	if LevelCore.can_unlock:
		if next_level_num<=LevelCore.max_level:
			LevelCore.current_levels.append(next_level_num)
			
			var next_level_path = "res://scenes/levels/level" + str(next_level_num) + ".tscn"
			get_tree().call_deferred("change_scene_to_file",next_level_path)
		
		else:
			get_tree().call_deferred("change_scene_to_file", "res://scenes/menus/level_menu.tscn")
		
		LevelCore.index = 0
		LevelCore.can_unlock = false
