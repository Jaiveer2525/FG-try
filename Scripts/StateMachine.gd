class_name StateMachine
extends Node

var current_state: PlayerState

@export var starting_state: PlayerState


func init() -> void: 
	print("starting_state: ", starting_state)
	change_state(starting_state)

func process_frame(delta: float) -> void:
	var new_state: State = current_state.process_frame(delta)
	if new_state: change_state(new_state)
	
func process_input(delta: InputEvent) -> void:
	var new_state: State = current_state.process_input(delta)
	if new_state: change_state(new_state)

func process_physics(delta: float) -> void:
	var new_state: State = current_state.process_physics(delta)
	if new_state: change_state(new_state)

func change_state(new_state: State) -> void:
	if current_state:
		print("Exiting state: ", current_state)
		current_state.exit()
	print("current State: ", current_state)
	current_state = PlayerIdleState
	print("New State: ", current_state)
	current_state.enter()
