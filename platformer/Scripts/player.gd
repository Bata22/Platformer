extends CharacterBody2D


const SPEED = 120.0
const JUMP_VELOCITY = -320.0

@onready var animated_sprite_player: AnimatedSprite2D = $AnimatedSprite2D

func _physics_process(delta: float) -> void:
	
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("Up") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# 	Get the  input direction -1, 0, 1 
	var direction = Input.get_axis("Left", "Right")
	if direction > 0:
		animated_sprite_player.flip_h = false
	elif direction < 0:
		animated_sprite_player.flip_h = true
	#play animations
	if is_on_floor():
		if direction == 0 :
			animated_sprite_player.play("idle")
		else: 
			animated_sprite_player.play("run")
	else:
		animated_sprite_player.play("jump")
	

	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
