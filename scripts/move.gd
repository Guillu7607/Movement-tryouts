extends Sprite2D
var ang = PI
var sp = 100

func _process(delta):
	rotation += ang*delta
	
	var vel  = Vector2.UP.rotated(rotation)*sp
	
	position += vel*delta


func _on_button_pressed() -> void:
	set_process(not is_processing())


#func _ready():
#	var timer = get_node("RoundTimer")
#	timer.timeout.connect(_on_timer_timeout)
func _on_timer_timeout():
	visible = not visible

signal interact_requested
func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("interact"):
		interact_requested.emit()
