extends CharacterBody2D
@export var left := "left"
@export var right := "right"
@export var punch := "punch"
@export var kick := "kick"

@onready var health : int = get_node("HurtBoxBody").health

#@onready var HurtBox = load("res://Scenes/HurtBox.tscn")

func _ready():
	pass

func turnRight():
	if scale.x < 0:
		scale.x = 1
		#position.x += 18
		get_node("Label").scale.x *= -1
	
func turnLeft():
	if scale.x > 0:
		scale.x = -1
		get_node("Label").scale.x *= -1
		#position.x -= 18

func _process(delta: float) -> void:
	health = get_node("HurtBoxBody").health
	#print("health acording to Player" + str(health))
