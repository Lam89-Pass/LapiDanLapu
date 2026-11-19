extends Area2D

signal level_completed

var players_at_door: int = 0

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("players"):
		players_at_door += 1
		print("Player masuk area pintu: ", players_at_door)
		check_win_condition()

func _on_body_exited(body: Node2D) -> void:
	if body.is_in_group("players"):
		players_at_door -= 1

func check_win_condition() -> void:
	if GameManager.p1_has_key and GameManager.p2_has_key and players_at_door >= 2:
		GameManager.complete_current_level()
		emit_signal("level_completed")
