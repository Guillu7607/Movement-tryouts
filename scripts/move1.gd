extends Sprite2D

signal interact_requested

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("interact"):
		interact_requested.emit()

signal health0
var health = 11
signal healthcambio(viejo, nuevo)

func _daño(amount):
	health -= amount
	if health <= 0:
		health0.emit()
		
func _daño2(cant):
	var vieja = health
	health -= cant
	healthcambio.emit(vieja, health)
