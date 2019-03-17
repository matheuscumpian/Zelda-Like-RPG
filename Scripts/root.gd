extends Node2D

onready var current_chunk = get_node("World_0x0")
onready var player = get_node("World_0x0/Hero")

var current_World = "World"

var from_chunk = null
var to_chunk = null
func _ready():
	
	
	pass 


func _process(delta):
	
	
	
	
	pass


func switch_chunk(from_chunk, delta):
	
	self.from_chunk = from_chunk
	var to_index = from_chunk.index + delta
	var ckstr = current_World + "_" + str(to_index.x) + "x" + str(to_index.y)
	var pre_chunk = load("res://Scenes/chunks/" + ckstr +  ".tscn")
	to_chunk = pre_chunk.instance()
	add_child(to_chunk)
	
	
	
	pass