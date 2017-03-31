extends Area2D

var TiroSimples = preload("res://scripts/class/arma/TiroSimples.gd")
var TiroRapido = preload("res://scripts/class/arma/TiroRapido.gd")
var TiroDuplo = preload("res://scripts/class/arma/TiroDuplo.gd")

var velocidade = 350 #deltatime (20 px por sec, esta na funcao _process
var arma

#imagina uma lista aqui :) 
var armas = [
	TiroSimples.new(self),
	TiroRapido.new(self),
	TiroDuplo.new(self)
]

func _ready():
	set_process(true) #objeto processavel individualmente
	arma = TiroSimples.new(self) #pega a minha instancia de nave, e passa para a classe
	add_to_group(game.GRUPO_NAVE)
	pass

#função do while 
func _process(delta):
	var direita = 0
	var esquerda = 0
	var cima = 0
	var baixo = 0
	
	if Input.is_action_pressed("direita"): #soma (EIXOS)
		direita = 1
	if Input.is_action_pressed("esquerda"): #esquerda subtrai
		esquerda = -1
	if get_pos().x > (640 - 50):
		direita = 0
	if get_pos().x < 50:
		esquerda = 0
	#// com escalar é possivel movimentar diagonalmente
	set_pos(get_pos() + Vector2(1,0) * velocidade * delta * (direita + esquerda)) # direita + esquerda //macete das duas teclas

	#*****DISPAROS 
	if Input.is_action_pressed("tiro"):
		arma.disparar()
		pass
		
	arma.atualizar(delta)
	pass

func set_arma(index):
	arma = armas[index]
	pass
	
