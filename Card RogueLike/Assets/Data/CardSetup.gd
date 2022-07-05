extends MarginContainer


var CardData = load("res://Assets/Data/DataLoad.gd")
var CardInfo
var CardID
var Inventory = []
var randNum = randi()

onready var CardIDData = get_node("CardIDData")
onready var InventorySave = get_node("InventoryLoad")

var a = 0
var d = 0
var e = 0
var p = 0


func _ready():
	InventorySave.inventory_load()
	
	print("Old Cards \n")
	for i in range(8):
		CardID = InventorySave.InvIDParsedLoad[i]
		CardInfo = DataLoad.card_data[CardID].CardName
		print(CardID, "\n", CardInfo, "\n")
		i += 1
	
	print("\n New Cards \n")
	for i in range(8):
		i = 0
		randomize()
		if a < 3:
			CardID = CardIDData.CardIDAtack[randi() % CardIDData.CardIDAtack.size()]
			CardInfo = DataLoad.card_data[CardID].CardName
			a = a + 1
		elif d < 3:
			CardID = CardIDData.CardIDDefence[randi() % CardIDData.CardIDDefence.size()]
			CardInfo = DataLoad.card_data[CardID].CardName
			d = d + 1
		elif e < 2:
			CardID = CardIDData.CardIDEvent[randi() % CardIDData.CardIDEvent.size()]
			CardInfo = DataLoad.card_data[CardID].CardName
			e = e + 1
		Inventory.append(CardID)
		print(CardID)
		print(CardInfo)
		i = i+1
	print("\n Old Data ", InventorySave.InvIDParsedLoad, "\n")
	InventorySave.InventoryID = Inventory
	InventorySave.inventory_save()
	print("\n New Data ", InventorySave.InventoryID, "\n")
	
