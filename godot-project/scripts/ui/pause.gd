extends Control

@onready var resume_button : Button = %ResumeButton

func _ready() -> void:
	process_mode = Node.PROCESS_MODE_ALWAYS
	
	resume_button.pressed.connect(on_resume_pressed)

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("pause"):
		_set_paused(not get_tree().paused)

func _set_paused(value: bool) -> void:
	get_tree().paused = value
	visible = value
	
func on_resume_pressed() -> void:
	_set_paused(false)
