class_name MoveLeft
extends State


func enter():
	#print("Entered Moveleft State")
	get_parent().get_parent().get_node("Label").text = "Left"
	

func physics_update(delta: float):
	player.velocity.x = -100
	player.move_and_slide()

func handle_input(event: InputEvent):
	var left = get_parent().get_parent().left
	var right = get_parent().get_parent().right
	var punch = get_parent().get_parent().punch
	var kick = get_parent().get_parent().kick
	
	if event.is_action_released(left):
		if Input.is_action_pressed(right):
			get_parent().change_state(get_parent().get_node("MoveRight"))
		else:
			get_parent().change_state(get_parent().get_node("Idle"))
	if event.is_action_pressed(right):
		get_parent().change_state(get_parent().get_node("MoveRight"))
	if Input.is_action_just_pressed(punch):
		get_parent().change_state(get_parent().get_node("Punch"))
	if Input.is_action_just_pressed(kick):
		get_parent().change_state(get_parent().get_node("Kick"))
