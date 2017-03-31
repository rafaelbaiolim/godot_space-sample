extends Node
const GRUPO_INIMIGO = "inimigos"
const GRUPO_NAVE = "nave" 

var score = 0 setget setScore

signal score_changed #sinal de mudança de score

func _ready():
	randomize()
	pass

func getCamera():
	return get_tree().get_root().get_node("Main").get_node("camera")
	pass

func setScore(valor):
	if valor > 0:
		score = valor 
		emit_signal("score_changed")
	pass