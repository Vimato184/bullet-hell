extends CharacterBody2D
class_name Actor

var is_placeholder: bool = true # Яыляется ли заглушкой-шаблоном

@onready var placegolder_sprite: Sprite2D = $Placeholder

@onready var movement = $MovementComponent


var sprite: Sprite2D # Потом пригодится для разных манипуляций с внешкой.

@export var speed: float = 200

func _ready() -> void:
	if  not is_placeholder:
		placegolder_sprite.visible = false # Если не заглушка то спрайт убираем
	else:
		sprite = placegolder_sprite # Если это шаблон то спрайт это заглушка.
		

func _physics_process(delta) -> void:	
	move_and_slide() # Движение в отдельном компоненте. 
