extends Line2D

const MAX_LENGTH = 15

func _process(delta):
	global_position = Vector2(0,0)
	global_rotation = 0
	var point: Vector2 = get_parent().global_position
	add_point(point)

	while get_point_count() > MAX_LENGTH:
		remove_point(0)
