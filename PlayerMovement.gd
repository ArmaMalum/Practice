extends CharacterBody2D


const speed = 300.0
#MotionMode MOTION_MODE_FLOATING=1

var r_velocity: Vector2
var right = Vector2(1,0)
var left = Vector2(-1,0)
var up = Vector2(1,0)
var down = Vector2(-1,0)

func _physics_process(delta):
	
	look_at(get_global_mouse_position())
	#var input_direction = Input.get_vector("left", "right", "up", "down")
	#r_velocity = input_direction * speed
	#velocity.x = r_velocity.rotated(get_rotation()+(deg_to_rad(90))).x
	#velocity.y = r_velocity.rotated(get_rotation()+(deg_to_rad(90))).y
	#velocity.x = transform.x * input_direction * speed
	#velocity.y = transform.y * input_direction * speed
	
	#if Input.is_action_pressed("right"):
	#	velocity.x = right.rotated(get_rotation()+(deg_to_rad(90))).x * speed
	#if Input.is_action_pressed("left"):
	#	velocity.x = left.rotated(get_rotation()+(deg_to_rad(90))).x * speed
	#if Input.is_action_pressed("down"):
	#	velocity.y = down.rotated(get_rotation()+(deg_to_rad(90))).y * speed
	#if Input.is_action_pressed("up"):
	#	velocity.y = up.rotated(get_rotation()+(deg_to_rad(90))).y * speed
	
	velocity = transform.x * Input.get_axis("down", "up") * speed
	
	if Input.is_action_pressed("right"):
		velocity.y += transform.y * right * speed
	if Input.is_action_pressed("left"):
		velocity.y += transform.y * left * speed
	
	move_and_slide()
