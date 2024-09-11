extends Area2D

@export var speed: int = 200

var velocity: Vector2 = Vector2()

func _process(delta: float) -> void:
  var right = 1 if Input.is_action_pressed("move_right") else 0
  var left = 1 if Input.is_action_pressed("move_left") else 0

  velocity.x = (right - left)
  position += velocity * speed * delta

  var min_x = scale.x * 0.5 + 80
  var max_x = get_viewport().size.x - min_x
  position.x = clamp(position.x, min_x, max_x)
