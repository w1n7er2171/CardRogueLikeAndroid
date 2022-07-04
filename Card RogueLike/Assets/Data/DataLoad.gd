extends Node

### AtackInfo = [Type, Cost, Damage, Name, Type of atack, Info]
### DefenceInfo = [Type, Cost, Armor, Name, Effect]
### EventInfo = [Type, Cost, Name, Effect]
### PotionInfo = [Type, Name, Effect]

var card_data

func _ready():
	var card_data_file = File.new()
	card_data_file.open("res://Assets/Data/CardDatabase.json", File.READ)
	var card_data_json =JSON.parse(card_data_file.get_as_text())
	card_data_file.close()
	card_data = card_data_json.result
	
	print(card_data)




#enum {Atack, Defence, Event, Potion}

#const DATA = {
#	Atack : 
#		["Atack", 1, 3, "Stab", "Melee", "Appear behind the target, deal 3 damage."],
#	Defence :
#		["Defence", 5, 10, "Shield", "Raise your shield, get 10 armor points."],
#	Event :
#		["Event", 4, "Run", "Move 5 tiles."],
#	Potion :
#		["Potion", "Healing Potion", "Heal 10 HP."]
#	}
