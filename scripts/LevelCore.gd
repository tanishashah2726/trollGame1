extends Node

var current_levels = [1]
var max_level = 3

var can_unlock = false

var colors = ["red", "blue"]
var index = 0
var current_color = colors[index]

func _process(delta: float) -> void:
	current_levels.sort()
	current_color=colors[index]
