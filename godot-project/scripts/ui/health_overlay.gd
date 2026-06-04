extends Sprite2D

@export_file("*.tscn") var scene : String

func _process(_delta: float) -> void:
	if Global.HEALTH <= 0:
		get_tree().change_scene_to_file(scene)
	
	modulate.a = 1.0 - (float(Global.HEALTH) / Global.starting_health)
