extends KinematicBody2D

export var SPEED = 50

export var motion = Vector2()
var facing

func _physics_process(delta):
	
	

	#Clamp limita a velocidade do node e o lerp diminui a velocidade de acordo com o friction!!!!!
	if Input.is_action_pressed("ui_up") and not Input.is_action_pressed("ui_down"):
		motion.y = -SPEED
		facing = "up"
	elif Input.is_action_pressed("ui_down") and not Input.is_action_pressed("ui_up"):
		motion.y = SPEED
		facing = "down"
	else:
		motion.y = 0
	if Input.is_action_pressed("ui_left") and not Input.is_action_pressed("ui_right"):
		motion.x = -SPEED
		facing = "left"
	elif Input.is_action_pressed("ui_right") and not Input.is_action_pressed("ui_left"):
		motion.x = SPEED
		facing = "right"
	else:
		motion.x = 0
	pass
		
	move_and_slide(motion)
	set_anim()
	
	pass
	
	
func set_anim():
	
	if facing == "right":
		$AnimationPlayer.current_animation = "right_walk" if motion.x != 0 else "stand_right"
		$SpriteHead.frame = 21
	elif facing == "left":
		$AnimationPlayer.current_animation = "left_walk" if motion.x != 0 else "stand_left"
		$SpriteHead.frame = 18
	elif facing == "down":
		$AnimationPlayer.current_animation = "down_walk" if motion.y != 0 else "stand_down"
		$SpriteHead.frame = 16
	elif facing == "up":
		$AnimationPlayer.current_animation = "up_walk" if motion.y != 0 else "stand_up"
		$SpriteHead.frame = 23
	print(motion)
	pass
	
	