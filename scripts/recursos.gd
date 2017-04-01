extends Node

var paths = []
var textures = [] 
const PATH_DIR = "res://paths"
const TEX_DIR = "res://sprites/PNG/Enemies/"
func _ready():
	randomize()
	carregarPaths()
	carregarTextures()
	pass

func randomPath():
	return paths[randi() % paths.size()] # rand() de 0 a size -1 ( %) 
	pass

func randomTexture():
	return textures[randi() % textures.size()] # rand() de 0 a size -1 ( %) 
	pass

func carregarTextures():
	var dir = Directory.new()
	dir.change_dir(TEX_DIR)
	dir.list_dir_begin()
	#iterator de files
	var file = dir.get_next()
	
	while file != "":		
		var pathFile = TEX_DIR + str("/") + file
		var tex = load(pathFile)
		if tex && tex extends Texture:
			textures.append(tex)
		file = dir.get_next()

func carregarPaths():
	var dir = Directory.new()
	dir.change_dir(PATH_DIR)
	dir.list_dir_begin()
	#iterator de files
	var path_file = dir.get_next()
	
	while path_file != "":		
		var pathFile = PATH_DIR + str("/") + path_file
		var path = load(pathFile)
		if path && path extends Curve2D:
			paths.append(path)
		path_file = dir.get_next()