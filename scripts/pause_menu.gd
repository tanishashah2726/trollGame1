extends CanvasLayer

@onready var pause_menu: CanvasLayer = $"."

func _ready() -> void:
	pause_menu.visible = false
	
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("pause"):
		pause_menu.visible = true

func _on_level_menu_btn_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/other/level_menu.tscn")

func _on_resume_btn_pressed() -> void:
	pause_menu.visible = false
