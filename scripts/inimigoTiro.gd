extends Area2D

const GIRO = 360
const VELOCIDADE =  200
const DIR = Vector2(0,1)

func _ready():
	add_to_group(game.GRUPO_TIRO_INIMIGO)
	set_process(true)	
	pass

func _process(delta):
	rotate(deg2rad(GIRO) * delta)
	translate(DIR * VELOCIDADE * delta)
	
func destruir():
	queue_free()
