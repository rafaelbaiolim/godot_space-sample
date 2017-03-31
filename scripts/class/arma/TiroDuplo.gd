var intervalo = .3 # >> 1/3 sec
var ultimo_disparo = 0
var nave
var pre_tiro = preload("res://scenes//tiro.tscn") #modelo de tiro

func _init(instancia):  #construtor do GoDot
	self.nave = instancia
	pass

func  disparar():
	if ultimo_disparo <= 0:
		atirar(nave.get_node("posCanhaoEsquerda"))
		atirar(nave.get_node("posCanhaoDireita"))
		ultimo_disparo = intervalo
	pass

func atualizar(delta):
	if ultimo_disparo > 0:
		ultimo_disparo -= delta
	pass

func atirar(node):
	var tiro = pre_tiro.instance() 
	tiro.set_global_pos(node.get_global_pos())
	nave.get_owner().add_child(tiro)
	pass