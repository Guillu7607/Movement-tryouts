extends Sprite2D
var ang = PI
var vel = 100

func _process(delta):
	var pos =0
	#rotation += ang*delta
	if (Input.is_action_pressed("ui_left")):
		pos =-1
	if (Input.is_action_pressed("ui_right")):
		pos =1
	rotation += ang * pos * delta
	var vel_up = Vector2.ZERO
	if Input.is_action_pressed("ui_up"):
		vel_up = Vector2.UP.rotated(rotation) * vel
	#var rot  = Vector2.UP.rotated(rotation)*vel
	
	position += vel_up*delta
