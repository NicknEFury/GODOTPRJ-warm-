extends KinematicBody2D

var lin_vel = Vector2(0, 0)
const SPEED = 200
func _physics_process(delta):
	if Input.is_action_pressed("left") and not Input.is_action_pressed("right"):
		lin_vel.x = -SPEED
	elif Input.is_action_pressed("right") and not Input.is_action_pressed("left"):
		lin_vel.x = SPEED
	else:
		lin_vel.x = 0
	move_and_slide(lin_vel)
