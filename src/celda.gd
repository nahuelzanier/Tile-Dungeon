extends Node2D
class_name Celda

@export var tipo : String = ""

var tablero : Tablero
var celda_res : float = 64

func _ready() -> void:
	position = coordenadas()*celda_res
	tablero = get_parent()

func coordenadas() -> Vector2i:
	return Vector2i(position.x/celda_res, position.y/celda_res)
