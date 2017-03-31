extends Node

var pre_meteor = preload("res://scenes/meteoro.tscn")
var intervalo = 2

func _ready():
	set_process(true)
	pass

func _process(delta):
	if intervalo > 0:
		intervalo -= delta
	else: 
		intervalo = rand_range(0.3,1)
		var meteoro = pre_meteor.instance()
		meteoro.set_pos(Vector2(rand_range(30,600),-40))
		get_owner().add_child(meteoro)
	pass
