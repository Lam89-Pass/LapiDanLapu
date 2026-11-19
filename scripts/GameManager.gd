extends Node

var keys_collected: int = 0
var p1_has_key: bool = false
var p2_has_key: bool = false
var unlocked_level: int = 1
var current_level: int = 1

func reset_level_state() -> void:
	keys_collected = 0
	p1_has_key = false
	p2_has_key = false

func add_key() -> void:
	keys_collected += 1
	print("Kunci terkumpul: ", keys_collected)

func complete_current_level() -> void:
	if current_level == unlocked_level and unlocked_level < 3:
		unlocked_level += 1
