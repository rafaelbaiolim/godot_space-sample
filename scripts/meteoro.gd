extends "res://scripts/class/inimigo/InimigoClass.gd"
var velocidade = 130
var rotacao = 0
	
func _process(delta):
	set_pos(get_pos() + Vector2(0,1) * velocidade * delta)
	rotate(deg2rad(rotacao) * delta)
	pass

func _inicia():
	rotacao = rand_range(-180, 360)

func _levarHit():
	get_node("anim").play("hit")
	pass

#Método sobscrito de class inimigo
func _destruir():
	get_node("sample").play("explosion")
	get_node("anim").play("destory")
