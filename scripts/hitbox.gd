class_name HitBox
extends Area2D

var isDisabled: bool = true
@export var Damage: int

func is_disabled():
	if isDisabled:
		return true
	else:
		return false
		
func damage():
	return Damage
	
func enable():
	#print("hitbox enabled")
	isDisabled = false
	#print(isDisabled)
	
func disable():
	#print("hitbox disabled")
	isDisabled = true
	#print(isDisabled)
