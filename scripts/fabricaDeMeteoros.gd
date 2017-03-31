extends Node

func getMeteoro(valor):
	return get_children()[valor].duplicate()

func geraMeteoroRandom():
	var totalMeteoros = get_children().size()
	return get_children()[randi() % totalMeteoros].duplicate()