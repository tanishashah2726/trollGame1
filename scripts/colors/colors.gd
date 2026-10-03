class_name ColorVision
extends Node

@onready var colorNode: Node2D = null

func changeVisible():
	if LevelCore.current_color == str(colorNode.name):
		thruNode(true)
	else:
		thruNode(false)
		
func thruNode(state):
	for child in colorNode.get_children():
		child.visible = state
