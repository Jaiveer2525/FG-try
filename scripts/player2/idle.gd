class_name Idle2
extends State

func enter():
	print("Entered Idle State")
	get_parent().get_parent().get_node("Label").text = "idle"
	var anim_player = player.get_node("AnimatedSprite2D")
	anim_player.play("Idle")
	if Input.is_action_pressed("p2right"):
		get_parent().change_state(get_parent().get_node("MoveRight"))
	elif Input.is_action_pressed("p2left"):
		get_parent().change_state(get_parent().get_node("MoveLeft"))
	
	if get_parent().get_parent().health < 0:
		get_parent().chang_state(get_parent().get_node("Dead"))

func handle_input(event: InputEvent):
	if event.is_action_pressed("p2right"):
		get_parent().change_state(get_parent().get_node("MoveRight"))
	elif event.is_action_pressed("p2left"):
		get_parent().change_state(get_parent().get_node("MoveLeft"))

	if Input.is_action_just_pressed("p2punch"):
		get_parent().change_state(get_parent().get_node("Punch"))
	if Input.is_action_just_pressed("p2kick"):
		get_parent().change_state(get_parent().get_node("Kick"))
