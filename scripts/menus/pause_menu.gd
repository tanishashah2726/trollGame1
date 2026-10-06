extends CanvasLayer

@onready var pause_menu: CanvasLayer = $"."

func _ready() -> void:
	pause_menu.visible = false
	get_tree().paused = false
	
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("pause"):
		if get_tree().paused:
			pause_menu.visible = false
			get_tree().paused = false
		else:
			pause_menu.visible = true
			get_tree().paused = true

func _on_level_menu_btn_pressed() -> void:
	pause_menu.visible = false
	get_tree().paused = false
	get_tree().change_scene_to_file("res://scenes/menus/level_menu.tscn")

func _on_resume_btn_pressed() -> void:
	pause_menu.visible = false
	get_tree().paused = false
