extends CharacterBody2D


var is_placeholder: bool = true # Яыляется ли заглушкой-шаблоном

@onready var placegolder_sprite: Sprite2D = $Placeholder
var sprite: Sprite2D # Потом пригодится для разных манипуляций с внешкой.

@export var speed: float = 200

func _ready() -> void:
	if  not is_placeholder:
		placegolder_sprite.visible = false # Если не заглушка то спрайт убираем
	else:
		sprite = placegolder_sprite # Если это шаблон то спрайт это заглушка.
		

func _physics_process(delta) -> void:
	"""Временная реализация движения"""
	var direction = Vector2.ZERO

	direction.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	direction.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")

	direction = direction.normalized()

	velocity = direction * speed
	move_and_slide()
