extends Node2D
onready var bullet = get_parent()
var new_pos = PoolVector2Array()

func _ready():
	pass 

func calc():
	var start_pos = get_parent().position
	var velocity = get_parent().velocity
	var gravity = get_parent().gravity

	var current_pos = Vector2()
	var time = 0
	#print(velocity)
	new_pos.append((0.5*gravity*time*time)+(velocity*time)+start_pos)
	time += 1
	while new_pos[new_pos.size()-1].y <= start_pos.y:
		#next_pos = 0.5*g*time^2+velocity*time+start_pos
	#	print(0.5*gravity*time*time+velocity*time+start_pos)
		new_pos.append((0.5*gravity*time*time)+(velocity*time)+start_pos)
		time += 1
	time = 0
	get_parent().get_parent().draw_plx(new_pos)
	



func _process(delta):
	pass
