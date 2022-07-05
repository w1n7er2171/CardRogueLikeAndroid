extends Node

var card_data

func _ready():
	var card_data_file = File.new()
	card_data_file.open("res://Assets/Data/CardDatabase.json", File.READ)
	var card_data_json =JSON.parse(card_data_file.get_as_text())
	card_data_file.close()
	card_data = card_data_json.result
