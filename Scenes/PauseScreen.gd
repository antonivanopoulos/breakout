extends Control

signal resume_signal

func _on_Resume_pressed():
	emit_signal("resume_signal")
