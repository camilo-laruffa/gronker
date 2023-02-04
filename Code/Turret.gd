extends Node2D

onready var BULLET = preload("res://Scenes/Bullet.tscn")
var canShoot = true

func _ready():
	pass
	
func _process(delta):
	if $"Shooting Range".is_colliding():
		var collided_area = $"Shooting Range".get_collider()
		if is_instance_valid(collided_area) && collided_area.is_in_group("Enemy") && $"Shoot Timer".is_stopped():
			shoot()

func _on_Shoot_Timer_timeout():
	canShoot = !canShoot

func shoot():
	var bullet = BULLET.instance()
	bullet.position = $"Shooting Point".global_position
	get_parent().add_child(bullet)
	$"Shoot Timer".start()
