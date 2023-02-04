extends KinematicBody2D

export(int) var speed : int = 30
export(int) var damage : int = 10
var time = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	time += delta
	if time > 3 :
		queue_free()
	move_and_slide(Vector2(1,0) * speed)



func _on_Area2D_area_entered(area):
	if area.is_in_group("Enemy"):
		area.get_parent().recieve_damage(damage)
	queue_free()
