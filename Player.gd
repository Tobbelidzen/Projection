extends KinematicBody2D

var scene = preload("res://Bullet.tscn")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var shoot_vector = Vector2(0.0,0.0)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	shoot_vector = get_global_mouse_position() - self.global_position
	shoot_vector = shoot_vector.normalized()*30
	#print("Shoot vector")
	#print(shoot_vector)
	if Input.is_action_just_pressed("shoot"):
		var instance = scene.instance()
		add_child(instance)
		instance.velocity = shoot_vector
