class_name MoveLeft
extends State


func enter():
	print("Entered Moveleft State")
	

func physics_update(delta: float):
	player.velocity.x = -3000 * delta
	player.move_and_slide()

func handle_input(event: InputEvent):
	if event.is_action_released("left"):
		if Input.is_action_pressed("right"):
			get_parent().change_state(get_parent().get_node("MoveRight"))
		else:
			get_parent().change_state(get_parent().get_node("Idle"))
	if event.is_action_pressed("right"):
		get_parent().change_state(get_parent().get_node("MoveRight"))
	if Input.is_action_just_pressed("Punch"):
		get_parent().change_state(get_parent().get_node("Punch"))
	if Input.is_action_just_pressed("Kick"):
		get_parent().change_state(get_parent().get_node("Kick"))
