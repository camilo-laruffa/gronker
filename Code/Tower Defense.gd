extends Node2D

onready var TURRET = preload("res://Scenes/Turret.tscn")
onready var GRONK = preload("res://Scenes/Gronk.tscn")

func _ready():
	pass


func _process(delta):		
	if Input.is_action_just_pressed("left click"):
		var turret = TURRET.instance()
		turret.position = get_global_mouse_position()
		add_child(turret)	
	if Input.is_action_just_pressed("right click"):
		var gronk = GRONK.instance()
		gronk .position = get_global_mouse_position()
		add_child(gronk )
