extends Area2D

var health = 100
var colliding : bool = false


func _on_area_entered(area: HitBox) -> void:
	colliding = true
	print("area_entered" + area.name)
	health -= area.damage()

func _on_area_exited(area: HitBox) -> void:
	colliding = false
	print("area exited" + area.name)
