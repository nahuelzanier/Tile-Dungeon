extends Celda

var inventario : int = 0

func _input(event: InputEvent) -> void:
	var dir_x = 0
	var dir_y = 0
	if event.is_action_pressed("izquierda"):
		dir_x = -1
	if event.is_action_pressed("derecha"):
		dir_x = 1
	if event.is_action_pressed("arriba"):
		dir_y = -1
	if event.is_action_pressed("abajo"):
		dir_y = 1
	
	var celda_colision = tablero.obtener_celda(coordenadas() + Vector2i(dir_x, dir_y))
	if celda_colision == null or celda_colision.tipo != "Pared":
		position.x += dir_x * celda_res
		position.y += dir_y * celda_res
	
	if celda_colision != null and celda_colision.tipo == "Item":
		inventario += 1
		celda_colision.queue_free()
	
	print("Items: ", inventario)
	print(coordenadas())
