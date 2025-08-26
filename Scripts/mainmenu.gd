extends Node2D

var button_type = null

func _on_start_pressed() -> void:
	button_type = "start"
	$fader.show()
	$fader/Fade_timer.start()
	$fader/AnimationPlayer.play("Fade_in")

	


func _on_quit_pressed() -> void:
	button_type = "quit"
	$fader.show()
	$fader/Fade_timer.start()
	$fader/AnimationPlayer.play("Fade_in")


func _on_fade_timer_timeout() -> void:
	if button_type == "start":
		get_tree().change_scene_to_file("res://Seens/game.tscn")
	
