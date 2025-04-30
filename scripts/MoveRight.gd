class_name MoveRight
extends State


func enter():
	print("Entered MoveRight State")
	

func physics_update(delta: float):
	player.velocity.x = 3000 * delta
	player.move_and_slide()

func handle_input(event: InputEvent):
	if event.is_action_released("right"):
		if Input.is_action_pressed("left"):
			get_parent().change_state(get_parent().get_node("MoveLeft"))
		else:
			get_parent().change_state(get_parent().get_node("Idle"))
	if Input.is_action_pressed("left"):
		get_parent().change_state(get_parent().get_node("MoveLeft"))
	if Input.is_action_just_pressed("Punch"):
		get_parent().change_state(get_parent().get_node("Punch"))
	if Input.is_action_just_pressed("Kick"):
		get_parent().change_state(get_parent().get_node("Kick"))
