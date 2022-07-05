extends Node

var drawCard = preload("res://CardSetup.tscn")

var card

#card Position
var xPos = 60
var yPos = 210

var cardCount = 6

# Called when the node enters the scene tree for the first time.
func _ready():
	for i in cardCount:
		card = drawCard.instance()
		card.rect_position = Vector2(xPos + (i * 60), yPos)
		$CardHand.add_child(card)
