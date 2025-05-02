extends Label

@onready var Player = get_parent().get_node("Player2")

func _process(delta: float) -> void:
	set_text(str(Player.health))
