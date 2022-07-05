extends Node

var InventoryData = "res://Assets/Data/Inventory.json"
var InventoryID = []
var CardSet = get_node()

func inventory_save():
	var file = File.new()
	file.open(InventoryData, File.WRITE)
	file.store_var(InventoryID[])
	file.close()
	
func inventory_load():
	var file = File.new()
	if file.file_exists(InventoryData):
		file.open(InventoryData, File.READ)
		InventoryID = file.get_var(true)
		file.close()
