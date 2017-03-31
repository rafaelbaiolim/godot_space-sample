extends Node

var prefabrica = preload("res://scenes/fabricaDeMeteoros.tscn")
var fabrica

func _ready():
	fabrica = prefabrica.instance()
	pass

func _on_timer_timeout():
	get_node("timer").set_wait_time(rand_range(1.5,3));
	var meteoro = fabrica.geraMeteoroRandom()
	meteoro.set_pos(Vector2(rand_range(30,600),-40))
	get_owner().add_child(meteoro)
