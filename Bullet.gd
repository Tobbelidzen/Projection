extends KinematicBody2D

var velocity = Vector2(0,0)
var gravity = Vector2(0,1)
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	velocity += gravity
	move_and_collide(velocity)
#	pass
