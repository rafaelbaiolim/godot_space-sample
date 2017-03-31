extends Area2D
var velocidade = 130
var rotacao = 0
var vida = 2
var pontos = 10

func _ready():
	add_to_group(game.GRUPO_INIMIGO) #game esta como singleton
	randomize()
	set_process(true)
	rotacao = rand_range(-2, 2)
	pass
	
func _process(delta):
	set_pos(get_pos() + Vector2(0,1) * velocidade * delta)
	rotate(rotacao * delta)
	pass
	
func aplicar_dano(valor):
	get_node("anim").play("hit")
	vida -= valor
	if vida <= 0:
		game.score += pontos
		get_node("sample").play("explosion")
		set_process(true)
		set_z(10)
		remove_from_group(game.GRUPO_INIMIGO)
		get_node("anim").play("destory")
		game.getCamera().vibrar_tela()
	pass
	
