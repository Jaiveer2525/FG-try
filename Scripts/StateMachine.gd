class_name StateMachine
extends Node

var current_state: State

@export var starting_state: State

fun init() -> void: change_state(starting_state)

func process_frame(delta: float) -> State:
	var new_state: State = current_state.process_frame(delta)
	if new_state: change_state(new_state)
	
func process_input(delta: InputEvent) -> State:
	var new_state: State = current_state.process_input(delta)
	if new_state: change_state(new_state)

func proccess_physics(delta: float) -> State:
	var new_state: State = current_state.process_physics(delta)
	if new_state: change_state(new_state)

func change_state(new_state: State) -> void:
	current_state.exit()
	current_state = new_state
	current_state.enter()
