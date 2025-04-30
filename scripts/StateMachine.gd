extends Node

@export var starting_state_path: NodePath
var current_state: State

func _ready():
	if starting_state_path.is_empty():
		push_error("❌ starting_state_path is empty. Assign a node in the inspector.")
		return

	var node = get_node_or_null(starting_state_path)
	if node == null:
		push_error("❌ Could not find node at path: " + str(starting_state_path))
		return

	if not node is State:
		push_error("❌ Node at path is not a State.")
		return

	change_state(node)

func change_state(new_state: State) -> void:
	if current_state:
		current_state.exit()
	current_state = new_state
	current_state.player = get_parent()
	current_state.enter()

func _input(event: InputEvent) -> void:
	current_state.handle_input(event)

func _process(delta: float) -> void:
	current_state.update(delta)

func _physics_process(delta: float) -> void:
	current_state.physics_update(delta)
