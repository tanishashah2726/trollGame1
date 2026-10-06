extends StaticBody2D

@export var jumpHeight = 500
@export var jumpDistance = 0

func _ready() -> void:
	pass # Replace with function body.


func _on_area_2d_body_entered(body: Node) -> void:
	var player = body as CharacterBody2D
	if player:
		player.velocity = Vector2(jumpDistance, -jumpHeight)
	
