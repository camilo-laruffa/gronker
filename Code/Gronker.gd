extends KinematicBody2D

export(int) var Speed : int = 100
export(int) var HP : int = 200


func _process(delta):
	move_and_slide(Vector2(-1,0) * Speed)
	if HP <= 0 : 
		die()
	pass

func die():
	queue_free()

func recieve_damage(damage):
	HP -= damage
	print("CURRENT GRONK HEALTH IS: " + str(HP))
