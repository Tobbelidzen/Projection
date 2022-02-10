extends KinematicBody2D

var pool = PoolVector2Array()
var scene = preload("res://Bullet.tscn")
var shoot_vector = Vector2(0.0,0.0)

func _ready():
	pass 


func _process(delta):
	shoot_vector = get_global_mouse_position() - self.global_position
	shoot_vector = shoot_vector.normalized()*30
	#print("Shoot vector")
	#print(shoot_vector)
	if Input.is_action_just_pressed("shoot"):
		var instance = scene.instance()
		add_child(instance)
		instance.global_position = global_position
		instance.velocity = shoot_vector
		

func _draw():
	for x in pool.size():
		draw_line(pool[x-1]-position,pool[x]-position,Color.red)

func calc():
	var start_pos = position
	var velocity = shoot_vector
	var gravity = Vector2(0,1)
	var new_pos = PoolVector2Array()
	var current_pos = Vector2()
	var time = 0
	#print(velocity)
	new_pos.append(global_position)
	#time += 1
	while new_pos[new_pos.size()-1].y <= start_pos.y:
		#next_pos = 0.5*g*time^2+velocity*time+start_pos
	#	print(0.5*gravity*time*time+velocity*time+start_pos)
		new_pos.append((0.5*gravity*time*time)+(velocity*time)+start_pos)
		time += 1
	time = 0
	return new_pos

func _input(event):
	if event is InputEventMouseMotion:
		pool = calc()
		#print(pool)
	update()
	pass # Replace with function body.
