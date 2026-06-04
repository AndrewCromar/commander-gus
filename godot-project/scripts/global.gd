extends Node

var SCORE : int

var starting_health : int = 3
var HEALTH : int = starting_health

var CAMERA_SHAKE_DURATION : float

var starting_fire_rate : float = 1
var FIRE_RATE : float = starting_fire_rate

var starting_spread : int = 1
var SPREAD : int = starting_spread

func reset() -> void:
	CAMERA_SHAKE_DURATION = 0
	
	SCORE = 0
	HEALTH = starting_health
	
	FIRE_RATE = starting_fire_rate
	SPREAD = starting_spread
