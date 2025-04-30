class_name Punch2
extends State

var punch_duration := 0.1
var elapsed_time := 0.0

func enter():
	print("Entered Punch State")
	get_parent().get_parent().get_node("Label").text = "Punch"
	var sprite: AnimatedSprite2D = player.get_node("AnimatedSprite2D")
	sprite.play("punch")
	elapsed_time = 0.0
	

func physics_update(delta):
	elapsed_time += delta
	if elapsed_time >= punch_duration:
		get_parent().change_state(get_parent().get_node("Idle"))
	
