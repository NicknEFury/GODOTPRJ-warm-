extends KinematicBody2D


var lin_vel = Vector2(0, 0)
const SPEED = 200
const GRAVITY = 200
const UP = Vector2(0, -1)
const JUMP_SPEED = 2000


func _physics_process(delta):
	apply_gravity()
	if Input.is_action_pressed("jump") and is_on_floor():
		lin_vel.y -= JUMP_SPEED
	if Input.is_action_pressed("left") and not Input.is_action_pressed("right"):
		lin_vel.x = -SPEED
	elif Input.is_action_pressed("right") and not Input.is_action_pressed("left"):
		lin_vel.x = SPEED
	else:
		lin_vel.x = 0
	move_and_slide(lin_vel, UP)

func apply_gravity():
	if is_on_floor():
		lin_vel.y = 0
	else:
		lin_vel.y += GRAVITY
	
