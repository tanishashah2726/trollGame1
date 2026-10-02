class_name blue
extends ColorVision


func _ready() -> void:
	colorNode = %blue
	thruNode(false)

func _process(_delta: float) -> void:
	changeVisible()
