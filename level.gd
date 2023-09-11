extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Starting")



func _on_maze_body_exited(body):
	print("ObjectOut")
	if (body.name == "Player"):
		get_tree().reload_current_scene()
