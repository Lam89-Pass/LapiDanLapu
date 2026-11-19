extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("players"):
		if body.player_id == 1 and not GameManager.p1_has_key:
			GameManager.p1_has_key = true
			GameManager.add_key()
			queue_free()
		elif body.player_id == 2 and not GameManager.p2_has_key:
			GameManager.p2_has_key = true
			GameManager.add_key()
			queue_free()
