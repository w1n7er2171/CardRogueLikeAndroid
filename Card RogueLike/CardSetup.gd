extends MarginContainer


onready var CardData = preload("res://Assets/Cards/CardData.gd")
var CardName
onready var CardInfo = CardData.DATA[CardData.get(CardName)]



func _ready():
	print(CardInfo)

