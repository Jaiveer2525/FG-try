extends Node2D


func _physics_process(delta: float) -> void:
	var is_collide_left = get_node("RayCastLeft") .is_colliding()
	var is_collide_right = get_node("RayCastRight").is_colliding()

	if is_collide_left:
		get_parent().turnLeft()
	
	if is_collide_right:
		get_parent().turnRight()
