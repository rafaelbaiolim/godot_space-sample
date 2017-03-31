extends Area2D
var velocidade = 500 #pixel p/ segundos
var dano = 1

func _ready():
	set_process(true) #processado pelo sistema
	get_node("sample").play("shooter")
	pass

func _process(delta):
	set_pos(get_pos() + Vector2(0,-1) * velocidade * delta );
	
	if get_pos().y < - 30:
		queue_free()
		pass	
	pass

func _on_tiro_area_enter( area ):
	if area.is_in_group(game.GRUPO_INIMIGO):
		if area.has_method("aplicar_dano"):
			area.aplicar_dano(dano)
		else:
			area.queue_free()
		pass
	pass 
