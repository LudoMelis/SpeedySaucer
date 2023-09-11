extends Node2D

var score = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	print("Starting")
	
func _physics_process(delta):
	#var speed = delta.get_global_transform()
	#print("Speed " + speed)
	pass



func _on_maze_body_exited(body):
	print(body.name + " Out")
	if (body.name == "Player"):
		get_tree().reload_current_scene()


