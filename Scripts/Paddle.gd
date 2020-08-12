extends KinematicBody2D

# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process(true)
	set_process_input(true)

func _physics_process(delta):
	var y = position.y
	var mouse_x = get_viewport().get_mouse_position().x
	position = Vector2(mouse_x, y)
