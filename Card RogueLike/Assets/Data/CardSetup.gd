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
	for i in range(8):
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
		InventorySave.InventoryID = Inventory[i]
		InventorySave.inventory_save()
		InventorySave.Invi = InventorySave.Invi + 1
		print(CardID)
		print(CardInfo)
		i = i+1
	
	
	
	#print(DataLoad.card_data)
	print("\n", InventorySave.InventoryID, "\n")
	print(Inventory)
	print("\n", randNum, "\n")
	#randomize()
	#randNum = randi()
	#print(randNum)


#func inventory_save():
#	var inv_data = {}
#	var index = 0
#	for CardID in Inventory:
#		inv_data[CardID] = Inventory[index]
#		inv_data[CardID].index = index
#		index += 1
