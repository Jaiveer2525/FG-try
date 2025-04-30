class_name Kick
extends State

var kick_duration := 0.3
var elapsed_time := 0.0

func enter():
	print("Entered Punch State")
	var sprite: AnimatedSprite2D = player.get_node("AnimatedSprite2D")
	sprite.play("kick")
	elapsed_time = 0.0
	

func physics_update(delta):
	elapsed_time += delta
	if elapsed_time >= kick_duration:
		get_parent().change_state(get_parent().get_node("Idle"))
	
