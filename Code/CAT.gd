extends Node2D


func _ready():
	pass


func _on_Area2D_area_entered(area):
	if area.is_in_group("Enemy") :
		print("THE GRONK HAS SUCCEED")
		queue_free()
	pass # Replace with function body.
