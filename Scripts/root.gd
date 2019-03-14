extends Node2D

onready var current_chunk = get_node("World_0x0")
onready var player = get_node("World_0x0/Hero")

var current_World = "World"

var from_chunk = null

func _ready():
	
	
	pass 


func _process(delta):
	
	
	
	
	pass


func switch_chunk(from_chunk, delta):
	
	self.from_chunk = from_chunk
	
	pass