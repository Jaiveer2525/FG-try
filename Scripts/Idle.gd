class_name PlayerIdleState
extends PlayerState

func enter() -> void:
	print("Idle: Entered")
	player.animation.play(idle_anim)

func exit():
	print("Idle: exited")
