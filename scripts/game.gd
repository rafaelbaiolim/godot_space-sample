extends Node
const GRUPO_INIMIGO = "inimigos"
const GRUPO_NAVE = "nave" 
const GRUPO_TIRO_INIMIGO = "tiroInimigo"

var score = 0 setget setScore
var lifes = 3  setget setLifes

signal score_changed #sinal de mudança de score
signal lifes_changed #sinal de mudança de score

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
	
func setLifes(valor):
	lifes = valor 
	emit_signal("lifes_changed")
	pass