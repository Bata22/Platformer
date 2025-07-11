extends Area2D


# Called when the node enters the scene tree for the first time.
@onready var game_manager: Node = %GameManager
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _on_body_entered(body: Node2D):
	game_manager.add_point()
	animation_player.play("pickup")
