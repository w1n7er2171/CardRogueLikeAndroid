extends Node

var InventoryData = "res://Assets/Data/Inventory.json"
var InventoryID = []

var InvIDParsedLoad = []

func inventory_save():
	var file = File.new()
	file.open(InventoryData, File.WRITE)
	file.store_var(JSON.print(InventoryID))
	file.close()
	
func inventory_load():
	var file = File.new()
	if file.file_exists(InventoryData):
		file.open(InventoryData, File.READ)
		InventoryID = file.get_var(false)
		InvIDParsedLoad = parse_json(InventoryID)
		file.close()
