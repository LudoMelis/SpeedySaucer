extends RigidBody2D

var force = 1000

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Force set : " + str(force))
	
func _process(delta):
	pass

func _physics_process(delta):
	if Input.is_action_pressed("Right"):
		apply_force(Vector2(force, 0))
	if Input.is_action_pressed("Left"):
		apply_force(Vector2(-force, 0))
	if Input.is_action_pressed("Up"):
		apply_force(Vector2(0, -force))
	if Input.is_action_pressed("Down"):
		apply_force(Vector2(0, force))
	

