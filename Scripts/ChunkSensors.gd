extends Node2D

export (bool) var top
export (bool) var bottom
export (bool) var left
export (bool) var right


func _on_top_body_entered(body):
	if top:
		get_parent().exit_chunk(Vector2(0,-1))
		print("top")
	
	
	pass 
	

func _on_bottom_body_entered(body):
	if bottom:
		get_parent().exit_chunk(Vector2(0,1))
		print("bottom")
	pass 


func _on_left_body_entered(body):
	if left:
		get_parent().exit_chunk(Vector2(-1,0))
		print("left")
	pass 


func _on_right_body_entered(body):
	if right:
		get_parent().exit_chunk(Vector2(1,0))
		print("right")
	
	pass 


func _on_top_body_shape_entered(body_id, body, body_shape, area_shape):
	
	pass # Replace with function body.
