extends Button

func _on_play_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Level1.tscn")

func _on_settings_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Settings.tscn")

func _on_quit_buttton_pressed() -> void:
	get_tree().quit()
