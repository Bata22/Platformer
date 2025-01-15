extends Area2D

@onready var timer: Timer = $Timer

func _on_body_entered(body: Node2D) -> void:
	timer.start()
	# Replace with function body.




func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()
	#get_tree().change_scene_to_file("res://Scenes/game_over.tscn") 
