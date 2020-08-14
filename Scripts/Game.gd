extends Node2D

func _ready():
	pass # Replace with function body.
	
func _on_ball_leaves_screen():
	print('Ball died.')
	$Ball.queue_free()
	get_tree().change_scene("res://Scenes/GameOverScreen.tscn")
	
