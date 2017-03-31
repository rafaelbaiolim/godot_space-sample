extends Node
const GRUPO_INIMIGO = "inimigos"
const GRUPO_NAVE = "nave" 

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func getCamera():
	return get_tree().get_root().get_node("Main").get_node("camera")
	pass