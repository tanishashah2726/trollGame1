extends Area2D

@export var follow_speed: float = 5.0 
@export var follow_offset: Vector2 = Vector2(-20, -10) 
var current_offset = follow_offset

var target: Node2D = null

func _ready() -> void:
	LevelCore.can_unlock = false

func _physics_process(delta: float) -> void:
	if LevelCore.can_unlock and target:
		if target.velocity.x<0:
			current_offset.x = abs(follow_offset.x)
		elif target.velocity.x>0:
			current_offset.x = -abs(follow_offset.x)
		
		var target_pos = target.global_position + current_offset
		global_position = global_position.lerp(target_pos, follow_speed * delta)

func _on_body_entered(body: Node2D) -> void:
	collected(body)
	
func collected(player_node:Node2D):
	LevelCore.can_unlock = true
	target = player_node
	set_deferred("monitoring", false)
	set_deferred("monitorable", false)
