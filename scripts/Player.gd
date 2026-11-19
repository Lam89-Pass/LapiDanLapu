extends CharacterBody2D

@export var player_id: int = 1 # 1 = Lapi (A, D, W), 2 = Lapu (Kiri, Kanan, Atas)
@export var speed: float = 220.0
@export var jump_velocity: float = -450.0
@export var player_color: Color = Color.DODGER_BLUE

var gravity: float = 980.0

@onready var visual: ColorRect = $ColorRect

func _ready() -> void:
	visual.color = player_color
	add_to_group("players")

func _physics_process(delta: float) -> void:
	# 1. Gravitasi (menarik karakter ke bawah saat di udara)
	if not is_on_floor():
		velocity.y += gravity * delta

	var prefix = "p1_" if player_id == 1 else "p2_"

	# 2. Lompat ke atas (tombol W atau Panah Atas) hanya saat kaki napak lantai
	if Input.is_action_just_pressed(prefix + "up") and is_on_floor():
		velocity.y = jump_velocity

	# 3. Jalan Kiri & Kanan
	var direction = Input.get_axis(prefix + "left", prefix + "right")
	if direction != 0:
		velocity.x = direction * speed
	else:
		velocity.x = move_toward(velocity.x, 0, speed)

	move_and_slide()
