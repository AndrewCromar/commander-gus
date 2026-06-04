extends Node

var SCORE : int

var starting_health : int = 3
var HEALTH : int = starting_health

var CAMERA_SHAKE_DURATION : float

var starting_fire_rate : float = 1
var FIRE_RATE : float = starting_fire_rate

func reset() -> void:
	SCORE = 0
	CAMERA_SHAKE_DURATION = 0
	HEALTH = starting_health
	FIRE_RATE = starting_fire_rate
