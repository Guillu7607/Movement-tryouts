extends Sprite2D
var ang = PI
var sp = 100

func _process(delta):
	
	rotation += ang*delta
	
	var vel  = Vector2.UP.rotated(rotation)*sp
	
	position += vel*delta
