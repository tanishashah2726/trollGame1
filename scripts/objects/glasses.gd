extends Node2D
@onready var timer: Timer = $Timer


func _ready() -> void:
	pass
	
func _process(_delta: float) -> void:
	switch_color()
	
func switch_color():
	if Input.is_action_just_pressed("switch") and timer.is_stopped():
		LevelCore.index = (LevelCore.index+1) % len(LevelCore.colors)
		LevelCore.current_color = LevelCore.colors[LevelCore.index]
		timer.start()
