extends CharacterBody2D


const SPEED = 800.0
const JUMP_VELOCITY = -8.0
const gravity = 200

var acceleration = Vector2(0, 0)



func _physics_process(delta):
	# Add the gravity.
	acceleration = Vector2(0, 0)

	acceleration.y += gravity

	# ui_accept is just space
	if Input.is_action_pressed("ui_accept"):
		acceleration.y = 0
		acceleration += Vector2(1, 0).rotated(rotation) * SPEED
	
	
	var direction = Input.get_axis("ui_left", "ui_right")
	rotation += direction * delta * 3

	velocity += acceleration * delta
	if velocity.length() > 400:
		velocity = velocity.normalized() * 400
	print(acceleration)
	move_and_slide()
