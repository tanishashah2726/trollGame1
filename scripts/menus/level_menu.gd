extends Node2D

var button_dict = {}

func _ready() -> void:
	var num = 1 #counter
	for child in $Buttons.get_children():
		var btn_name = "btn"+str(num)
		button_dict[btn_name] = child
		
		child.disabled = true
		connect_lvl_button(num)
		num+=1
		
	unlock_button()
	LevelCore.index = 0

func _on_button_pressed(level_path: String) -> void:
	get_tree().change_scene_to_file(level_path)
	
func unlock_button():
	for i in range(len(LevelCore.current_levels)):
		var btn = button_dict["btn"+str(LevelCore.current_levels[i-1])]
		btn.disabled = false

func connect_lvl_button(btn_num):
	var btn = button_dict["btn"+str(btn_num)]
	if btn.pressed.is_connected(_on_button_pressed): btn.pressed.disconnect(_on_button_pressed)
	btn.pressed.connect(_on_button_pressed.bind("res://scenes/levels/level"+str(btn_num)+".tscn"))
