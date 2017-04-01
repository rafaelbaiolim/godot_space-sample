extends Node2D

var pre_inimigo = preload("res://scenes/inimigos/pathInimigo.tscn")

func _ready():
	randomize_timer()
	pass
	
func randomize_timer():
	get_node("timer").set_wait_time(rand_range(2,10))

func _on_timer_timeout():
	var inimigo = pre_inimigo.instance()
	get_parent().add_child(inimigo)
	randomize_timer()
	pass 
