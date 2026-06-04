extends Node2D

@export var bullet : PackedScene
@export var shoot_sounds : Array[AudioStream] = []

@onready var shoot_position : Node2D = $ShootPosition
@onready var audio_player : AudioStreamPlayer2D = $AudioStreamPlayer2D

var default_spread_angle : float = 10
var max_spread : float = 90

var timer : float

func _process(delta: float) -> void:
	look_at(get_global_mouse_position())
	
	timer -= delta
	if timer <= 0:
		timer = Global.FIRE_RATE
		shoot()

func shoot() -> void:
	var count : int = Global.SPREAD

	var step : float = default_spread_angle
	if count > 1 and (count - 1) * step > max_spread:
		step = max_spread / float(count - 1)

	for i in count:
		var offset : float = step * (i - (count - 1) / 2.0)
		fire_bullet(rotation + deg_to_rad(offset))

	audio_player.stream = shoot_sounds.pick_random()
	audio_player.play()

func fire_bullet(angle : float) -> void:
	var new_bullet = bullet.instantiate()
	new_bullet.position = shoot_position.global_position
	new_bullet.end_position = Vector2.from_angle(angle)
	get_parent().add_child(new_bullet)
