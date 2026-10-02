class_name red
extends ColorVision


func _ready() -> void:
	colorNode = %red
	thruNode(false)

func _process(_delta: float) -> void:
	changeVisible()
