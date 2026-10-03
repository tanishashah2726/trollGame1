extends Node

var current_levels = [1]
var max_level = 2

var colors = ["red", "blue"]
var index = 0
var current_color = colors[index]

func _process(delta: float) -> void:
	index = index
	current_color=colors[index]
