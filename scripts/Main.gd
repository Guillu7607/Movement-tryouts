extends Node2D

@onready var player = $Player
@onready var round_timer = $RoundTimer

func _ready() -> void:
	player.interact_requested.connect(_on_player_interact_requested)
	
	round_timer.start()
	round_timer.timeout.connect(_on_round_timer_timeout)

func _on_player_interact_requested() -> void:
	print("Interacción recibida")

func _on_round_timer_timeout() -> void:
	player.set_process(false)
	player.set_process_unhandled_input(false)
	print("Fin de la ronda")
