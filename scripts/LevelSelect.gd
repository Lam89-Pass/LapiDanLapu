extends Control

func _ready() -> void:
	$BtnLevel2.disabled = GameManager.unlocked_level < 2
	$BtnLevel3.disabled = GameManager.unlocked_level < 3

func _on_btn_level_1_pressed() -> void:
	GameManager.current_level = 1
	GameManager.reset_level_state()
	get_tree().change_scene_to_file("res://scenes/Level1.tscn")

func _on_btn_level_2_pressed() -> void:
	GameManager.current_level = 2
	GameManager.reset_level_state()
	get_tree().change_scene_to_file("res://scenes/Level2.tscn")

func _on_btn_level_3_pressed() -> void:
	GameManager.current_level = 3
	GameManager.reset_level_state()
	get_tree().change_scene_to_file("res://scenes/Level3.tscn")

func _on_btn_back_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/MainMenu.tscn")
