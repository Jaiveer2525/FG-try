extends CharacterBody2D
@export var left := "left"
@export var right := "right"
@export var punch := "punch"
@export var kick := "kick"

@export var health = 100

func _ready():
	pass

func turnRight():
	if scale.x < 0:
		scale.x = 1
		#position.x += 18
		get_child(-2).scale.x *= -1
	
func turnLeft():
	if scale.x > 0:
		scale.x = -1
		get_child(-2).scale.x *= -1
		#position.x -= 18
