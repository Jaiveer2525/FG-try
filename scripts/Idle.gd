class_name Idle
extends State


func enter():
	
	var left = get_parent().get_parent().left
	var right = get_parent().get_parent().right
	var punch = get_parent().get_parent().punch
	var kick = get_parent().get_parent().kick

	print("Entered Idle State")
	get_parent().get_parent().get_node("Label").text = "idle"
	var anim_player = player.get_node("AnimatedSprite2D")
	anim_player.play("Idle")
	if Input.is_action_pressed(right):
		get_parent().change_state(get_parent().get_node("MoveRight"))
	elif Input.is_action_pressed(left):
		get_parent().change_state(get_parent().get_node("MoveLeft"))

func handle_input(event: InputEvent):
	var left = get_parent().get_parent().left
	var right = get_parent().get_parent().right
	var punch = get_parent().get_parent().punch
	var kick = get_parent().get_parent().kick	
	
	if event.is_action_pressed(right):
		get_parent().change_state(get_parent().get_node("MoveRight"))
	elif event.is_action_pressed(left):
		get_parent().change_state(get_parent().get_node("MoveLeft"))

	if Input.is_action_just_pressed(punch):
		get_parent().change_state(get_parent().get_node("Punch"))
	if Input.is_action_just_pressed(kick):
		get_parent().change_state(get_parent().get_node("Kick"))
