extends Area2D

export var vida = 2
export var pontos = 10

func _ready():
	set_process(true)
	add_to_group(game.GRUPO_INIMIGO) #game esta como 
	_inicia()
	pass

func aplicar_dano(valor):
	vida -= valor
	_levarHit()
	if vida <= 0:
		_destruir()
		game.score += pontos
		set_process(false)
		set_z(10)
		remove_from_group(game.GRUPO_INIMIGO)
		game.getCamera().vibrar_tela()
	pass
	
func _inicia():
	pass
	
func _destruir():
	pass

func _levarHit():
	pass