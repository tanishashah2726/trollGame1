extends Node2D

#all the buttons
@onready var btn1: Button = $Buttons/Button1
@onready var btn2: Button = $Buttons/Button2



func _ready() -> void:
	#Disables all the buttons and connects them all to their path
	var num = 1 #counter
	for child in $Buttons.get_children():
		child.disabled = true
		connect_lvl_button(num)
		num+=1
		
	unlock_button()
		

func _on_button_pressed(level_path: String) -> void:
	get_tree().change_scene_to_file(level_path)
	
func unlock_button():
	for i in range(len(LevelCore.current_levels)):
		var btn = get("btn"+str(LevelCore.current_levels[i-1]))
		btn.disabled = false

func connect_lvl_button(btn_num):
	var btn = get("btn"+str(btn_num))
	if btn.pressed.is_connected(_on_button_pressed): btn.pressed.disconnect(_on_button_pressed)
	btn.pressed.connect(_on_button_pressed.bind("res://scenes/levels/level"+str(btn_num)+".tscn"))
