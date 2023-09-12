extends RigidBody2D

var score = 0
# Force is to be set at Mass*100
var force = 10000

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Force set : " + str(force))
	
	
func _process(delta):
	pass

func _physics_process(delta):
	if Input.is_action_pressed("Right"):
		apply_force(Vector2(Input.get_axis("Left", "Right") * force, 0))
	if Input.is_action_pressed("Left"):
		apply_force(Vector2(Input.get_axis("Left", "Right") * force, 0))
	if Input.is_action_pressed("Up"):
		apply_force(Vector2(0, Input.get_axis("Up", "Down") * force))
	if Input.is_action_pressed("Down"):
		apply_force(Vector2(0, Input.get_axis("Up", "Down") * force))

	score += int((self.linear_velocity.length()/100)**2)
	self.get_node("HUD/CanvasLayer/ScoreLabelData").text = str(score)

