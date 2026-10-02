extends Node2D

func _ready() -> void:
	pass
	
func _process(_delta: float) -> void:
	switch_color()
	
func switch_color():
	if Input.is_action_just_pressed("switch"):
		LevelCore.index = (LevelCore.index+1) % len(LevelCore.colors)
		LevelCore.current_color = LevelCore.colors[LevelCore.index]
