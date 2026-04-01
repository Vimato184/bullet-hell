extends Node

@onready var movement = get_parent().get_node("MovementComponent")

func _physics_process(delta):
	var dir = Vector2(
		Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"),
		Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	)

	movement.direction = dir
