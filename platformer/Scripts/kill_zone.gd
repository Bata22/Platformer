extends Area2D

@onready var timer: Timer = $Timer

func _on_body_entered(body: Node2D) -> void:
	timer.start()
	Engine.time_scale = 0.5
	body.get_node("CollisionShape2D").queue_free()





func _on_timer_timeout() -> void:
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
	#get_tree().change_scene_to_file("res://Scenes/game_over.tscn") 
