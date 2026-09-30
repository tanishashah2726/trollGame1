extends Node2D

@onready var btn1: Button = $Buttons/Button1
@onready var btn2: Button = $Buttons/Button2


func _ready() -> void:
	if btn1.pressed.is_connected(_on_button_pressed): btn1.pressed.disconnect(_on_button_pressed)
	if btn2.pressed.is_connected(_on_button_pressed): btn2.pressed.disconnect(_on_button_pressed)

	for child in $Buttons.get_children():
		child.disabled = true
		
	unlock_button()
		
	btn1.pressed.connect(_on_button_pressed.bind("res://scenes/levels/level1.tscn"))
	btn2.pressed.connect(_on_button_pressed.bind("res://scenes/levels/level2.tscn"))

func _on_button_pressed(level_path: String) -> void:
	get_tree().change_scene_to_file(level_path)
	
func unlock_button():
	for i in range(len(LevelCore.current_levels)):
		var btn = get("btn"+str(LevelCore.current_levels[i-1]))
		btn.disabled = false
