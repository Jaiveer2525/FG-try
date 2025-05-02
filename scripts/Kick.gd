class_name Kick
extends State

var kick_duration := 0.3
var elapsed_time := 0.0
@onready var hitbox := get_parent().get_parent().get_node("HitBoxKick")

func enter():
	#print("Entered Kick State")
	get_parent().get_parent().get_node("Label").text = "Kick"
	var sprite: AnimatedSprite2D = player.get_node("AnimatedSprite2D")
	sprite.play("kick")
	elapsed_time = 0.0
	

func physics_update(delta):
	var hit_elapsed : bool = false
	elapsed_time += delta
	if elapsed_time > 0.1:
		player.get_node("HitBoxKick").position.y = -12
	if elapsed_time > 0.2:
		player.get_node("HitBoxKick").position.y = 12
	#print(elapsed_time)
	if elapsed_time >= kick_duration:
		hit_elapsed = false
		get_parent().change_state(get_parent().get_node("Idle"))
	
