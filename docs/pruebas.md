Player.gd
Qué hace: Gestiona el movimiento del personaje en el espacio (posición, rotación y velocidad según las teclas pulsadas), el control de su salud y puntos de vida con funciones de daño, y la detección de la entrada de usuario para interactuar.

Quién emite: Emite la señal interact_requested cuando el usuario pulsa la tecla de interacción asignada. También emite las señales de vida cuando el jugador recibe daño.

Quién recibe: Recibe las entradas del teclado mediante el mapeo de acciones de Godot para mover el sprite.

Main.gd
Qué hace: Actúa como el controlador central de la escena. Arranca el temporizador de la ronda al iniciar el juego y define el comportamiento global cuando el tiempo se agota (por ejemplo, deteniendo los procesos del jugador).

Quién emite: No emite señales propias hacia otros nodos; su función principal es actuar como receptor y coordinador.

Quién recibe: Recibe y conecta la señal interact_requested emitida por el Player para saber cuándo se ha solicitado una interacción, y recibe la señal timeout del nodo RoundTimer para saber cuándo finaliza el tiempo de la partida.
