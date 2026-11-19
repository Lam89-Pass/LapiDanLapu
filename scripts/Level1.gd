extends Node2D

func _ready() -> void:
	$CanvasLayer/StoryPanel.visible = true
	$CanvasLayer/PausePanel.visible = false
	$CanvasLayer/WinPanel.visible = false
	get_tree().paused = true

func _on_btn_mulai_pressed() -> void:
	$CanvasLayer/StoryPanel.visible = false
	get_tree().paused = false

func _on_btn_pause_pressed() -> void:
	$CanvasLayer/PausePanel.visible = true
	get_tree().paused = true

func _on_btn_lanjut_pressed() -> void:
	$CanvasLayer/PausePanel.visible = false
	get_tree().paused = false

func _on_btn_main_menu_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://scenes/MainMenu.tscn")

func _on_exit_door_level_completed() -> void:
	$CanvasLayer/WinPanel.visible = true
	get_tree().paused = true

func _on_btn_level_select_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://scenes/LevelSelect.tscn")
