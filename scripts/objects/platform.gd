extends AnimatableBody2D

@export var fake = false

func _ready() -> void:
	if fake:
		get_node("CollisionShape2D").queue_free()
