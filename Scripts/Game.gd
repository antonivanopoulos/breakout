extends Node2D

func _ready():
	pass # Replace with function body.

func _on_ball_leaves_screen():
	print('Ball died.')
	$Ball.queue_free()
	get_tree().change_scene("res://Scenes/GameOverScreen.tscn")

func _process(_delta):
	if Input.is_action_pressed("ui_cancel"):
		$PausePopup.show()
		get_tree().paused = true

func resume_game():
	$PausePopup.hide()
	get_tree().paused = false
