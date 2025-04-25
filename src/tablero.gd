extends Node2D
class_name Tablero

func obtener_celda(coordenadas : Vector2i) -> Celda:
	var celda_encontrada = null
	for celda in get_children():
		if celda.coordenadas() == coordenadas and celda.tipo != "Jugador":
			celda_encontrada = celda
	return celda_encontrada
