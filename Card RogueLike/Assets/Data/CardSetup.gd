extends MarginContainer


var CardData = load("res://Assets/Data/DataLoad.gd")
var CardInfo
var CardIDDatabase = ["1001", "1002", "1003", "2001", "2002", "3001", "4001"]
var CardID
var randNum = randi()

var a = 0
var d = 0
var e = 0
var p = 0

var RandCard


func _ready():
	for i in range(8):
		randomize()
		CardID = CardIDDatabase[randi() % CardIDDatabase.size()]
		CardInfo = DataLoad.card_data[CardID].CardType
		print(CardID)
		print(CardInfo)
		i = i+1
	
	#print(DataLoad.card_data)
	print("\n", randNum, "\n")
	randomize()
	randNum = randi()
	print(randNum)
