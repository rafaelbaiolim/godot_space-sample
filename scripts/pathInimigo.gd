extends Path2D
 #apenas quando a cena esta carregada é iniciado
onready var follow = get_node("follow")
var velocidade = 200

func _ready():
	set_curve(recursos.randomPath())
	set_process(true)
	get_node("follow/inimigo").connect("destruiu",self, "_on_destruiu")
	pass

func _process(delta):
	follow.set_offset(follow.get_offset() + velocidade * delta)
	#offset de unidade de 0 a 1 
	if follow.get_unit_offset() >= 1:
		queue_free()

func _on_destruiu():
	set_process(false)
	var timer = Timer.new()
	timer.set_wait_time(3)
	timer.connect("timeout",self,"queue_free")
	timer.start()
	add_child(timer)