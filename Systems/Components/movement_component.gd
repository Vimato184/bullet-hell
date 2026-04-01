extends Node

@export var speed: float = 200.0
var direction := Vector2.ZERO

func _ready():
	pass

func _physics_process(delta):
	var body = get_parent()
	body.velocity = direction.normalized() * speed
