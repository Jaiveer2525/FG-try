class_name MoveRight
extends State

func enter():
	print("Entered MoveRight State")
	get_parent().get_parent().get_node("Label").text = "Right"
	

func physics_update(delta: float):
	player.velocity.x = 100
	player.move_and_slide()

func handle_input(event: InputEvent):
	var left = get_parent().get_parent().left
	var right = get_parent().get_parent().right
	var punch = get_parent().get_parent().punch
	var kick = get_parent().get_parent().kick

	if event.is_action_released(right):
		if Input.is_action_pressed(left):
			get_parent().change_state(get_parent().get_node("MoveLeft"))
		else:
			get_parent().change_state(get_parent().get_node("Idle"))
	if Input.is_action_pressed(left):
		get_parent().change_state(get_parent().get_node("MoveLeft"))
	if Input.is_action_just_pressed(punch):
		get_parent().change_state(get_parent().get_node("Punch"))
	if Input.is_action_just_pressed(kick):
		get_parent().change_state(get_parent().get_node("Kick"))
