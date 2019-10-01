extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	print(get_node(".").global_transform[0][0])
	get_node(".").global_transform[0][0] = 0
	get_node(".").global_transform[0][1] = 0
	get_node(".").global_transform[1][0] = 0
	get_node(".").global_transform[1][1] = 0
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if get_node(".").global_transform[0][0] > 2:
		get_node(".").global_transform[0][0] = 0 
#	if get_node(".").global_transform[0][1] > 2:
#		get_node(".").global_transform[0][1] = 0 
	get_node(".").global_transform[0][0] += .01
#	get_node(".").global_transform[0][1] += .01
#	if get_node(".").global_transform[1][0] < 0:
#		get_node(".").global_transform[1][0] = 2 
	if get_node(".").global_transform[1][1] < 0:
		get_node(".").global_transform[1][1] = 2 
#	get_node(".").global_transform[1][0] -= .01
	get_node(".").global_transform[1][1] -= .01
