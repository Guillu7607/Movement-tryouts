extends Node2D
signal health0
var health =11
signal healthcambio(viejo, nuevo)

func _daño(amount):
	health-=amount
	if health<=0:
		health0.emit()
		
func _daño2(cant):
	var vieja = health
	health-=cant
	healthcambio.emit(vieja,health) 
