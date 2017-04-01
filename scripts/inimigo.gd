extends Area2D

var preTiro = preload("res://scenes/inimigo_tiro.tscn")

func _ready():
	get_node("sprite").set_texture(recursos.randomTexture())
	pass
	
func destruir():
	queue_free()

func _on_Timer_timeout():
	var tiro = preTiro.instance()
	tiro.set_global_pos(get_node("tiroPosInimigo").get_global_pos())
	game.getCamera().add_child(tiro)
	pass 
