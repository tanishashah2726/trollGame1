extends Node2D

var colors = ["red", "blue"]
var index = 0
var current_color = colors[index]

func _ready() -> void:
	pass
	
func _process(delta: float) -> void:
	switch_color()
	
func switch_color():
	if Input.is_action_just_pressed("switch"):
		index = (index+1) % len(colors)
		current_color = colors[index]
		print(index, current_color)
