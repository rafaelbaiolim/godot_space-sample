extends "res://scripts/class/inimigo/InimigoClass.gd"

var preTiro = preload("res://scenes/inimigo_tiro.tscn")
signal destruiu 

func _on_Timer_timeout():
	var tiro = preTiro.instance()
	tiro.set_global_pos(get_node("tiroPosInimigo").get_global_pos())
	game.getCamera().add_child(tiro)
	pass 

func _inicia():
	get_node("explosao").hide()
	get_node("sprite").set_texture(recursos.randomTexture())

func _levarHit():
	get_node("anim").play("hit")
	pass

func _destruir():
	get_node("explosao").show()
	get_node("sprite").hide()
	get_node("Timer").stop()
	get_node("explosao/anim").play("explosao")
	emit_signal("destruiu")