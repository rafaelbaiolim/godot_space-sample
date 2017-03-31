extends "res://scripts/tiro.gd"

func _ready():
	set_process(true)
	get_node("sample").play("rapido")
	velocidade = 900
	dano = .5
	pass
	