extends Label

@onready var Player = get_parent().get_node("Player1")

func _process(delta: float) -> void:
	#print("setting health to " + str(Player.health))
	set_text(str(Player.health))
