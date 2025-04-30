class_name Idle
extends State

func enter():
	print("Entered Idle State")
	var anim_player = player.get_node("AnimatedSprite2D")
	anim_player.play("Idle")
	if Input.is_action_pressed("right"):
		get_parent().change_state(get_parent().get_node("MoveRight"))
	elif Input.is_action_pressed("left"):
		get_parent().change_state(get_parent().get_node("MoveLeft"))

func handle_input(event: InputEvent):
	if event.is_action_pressed("right"):
		get_parent().change_state(get_parent().get_node("MoveRight"))
	elif event.is_action_pressed("left"):
		get_parent().change_state(get_parent().get_node("MoveLeft"))

	if Input.is_action_just_pressed("Punch"):
		get_parent().change_state(get_parent().get_node("Punch"))
	if Input.is_action_just_pressed("Kick"):
		get_parent().change_state(get_parent().get_node("Kick"))
