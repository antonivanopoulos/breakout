extends RigidBody2D

export var SPEEDUP = 4
const MAXSPEED = 400

# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process(true)

func _physics_process(delta):
	var bodies = get_colliding_bodies()
	for body in bodies:
		if body.is_in_group('Bricks'):
			body.queue_free()
		
		if body.get_name() == 'Paddle':
			var speed = linear_velocity.length()
			var anchor: Position2D = body.get_node('Anchor')
			var direction = position - anchor.global_position
			
			print(str(speed + SPEEDUP))
			self.linear_velocity = direction.normalized() * min(speed + SPEEDUP, MAXSPEED)
