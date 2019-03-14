extends KinematicBody2D

var walk_speed = 150

var velocity = Vector2(0, 0)

enum {UP, DOWN, LEFT, RIGHT}
var facing = DOWN

func _physics_process(delta):
	
	
	#Recebe do teclado o Input
	var walk_left = Input.is_action_pressed("left") 
	var walk_right = Input.is_action_pressed("right")
	var walk_up = Input.is_action_pressed("up")
	var walk_down = Input.is_action_pressed("down")
	#Zera o movimento
	velocity = Vector2()
	
	if walk_left:
		velocity.x = -walk_speed
		facing = LEFT
	elif walk_right:
		velocity.x = walk_speed
		facing = RIGHT
	elif walk_up:
		velocity.y = -walk_speed
		facing = UP
	elif walk_down:
		velocity.y = walk_speed
		facing = DOWN
	
	velocity = move_and_slide(velocity)
	
	set_anim()

func set_anim():
	if facing == RIGHT:
		$AnimMove.current_animation = "right_walk" if velocity.x != 0 else "right_stand"
		$Head.frame = 21
	elif facing == LEFT:
		$AnimMove.current_animation = "left_walk" if velocity.x != 0 else "left_stand"
		$Head.frame = 18
	elif facing == DOWN:
		$AnimMove.current_animation = "down_walk" if velocity.y != 0 else "down_stand"
		$Head.frame = 16
	elif facing == UP:
		$AnimMove.current_animation = "up_walk" if velocity.y != 0 else "up_stand"
		$Head.frame = 23








