extends Powerup

func on_collect(area : Area2D) -> void:
	if area.is_in_group("bullet"):
		Global.FIRE_RATE /= 2
		die()
