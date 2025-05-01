class_name Dead
extends State

func enter():
	print("Entered Dead State")
	get_parent().get_parent().get_node("Label").text = "Dead"
