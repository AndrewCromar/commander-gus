extends Powerup

func on_collect(area : Area2D) -> void:
	if area.is_in_group("bullet"):
		Global.SPREAD += 1
		die()
