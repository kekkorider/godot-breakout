extends Node2D

signal game_start

func _ready() -> void:
  await get_tree().create_timer(1).timeout
  game_start.emit()
