extends Path2D
 #apenas quando a cena esta carregada é iniciado
onready var follow = get_node("follow")
var velocidade = 200

func _ready():
	set_curve(recursos.randomPath())
	set_process(true)
	pass

func _process(delta):
	follow.set_offset(follow.get_offset() + velocidade * delta)
	#offset de unidade de 0 a 1 
	if follow.get_unit_offset() >= 1:
		queue_free()