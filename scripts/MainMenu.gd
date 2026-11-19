extends Control

func _on_btn_play_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/LevelSelect.tscn")

func _on_btn_guide_pressed() -> void:
	$PanelGuide.visible = true

func _on_btn_close_guide_pressed() -> void:
	$PanelGuide.visible = false

func _on_btn_exit_pressed() -> void:
	get_tree().quit()
