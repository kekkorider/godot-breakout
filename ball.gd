extends Area2D

@export var speed: float = 250

var velocity: Vector2 = Vector2()

func _process(delta: float) -> void:
  position += velocity * delta

func _on_game_game_start() -> void:
  velocity = Vector2(0, -300)
  print("Game start")
  pass


func _on_area_entered(_area: Area2D) -> void:
  velocity.y *= -1
  pass # Replace with function body.
