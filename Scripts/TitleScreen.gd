extends Control

func _ready():
	pass # Replace with function body.

func _on_NewGame_pressed():
	get_tree().change_scene("res://Scenes/LevelOne.tscn")
