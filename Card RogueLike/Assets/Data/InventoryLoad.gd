extends Node

var InventoryData = "res://Assets/Data/Inventory.json"
var InventoryID = []
var Invi = 1

func inventory_save():
	var file = File.new()
	file.open(InventoryData, File.WRITE)
	file.store_var(InventoryID.append(1))
	file.close()
	
func inventory_load():
	var file = File.new()
	if file.file_exists(InventoryData):
		file.open(InventoryData, File.READ)
		InventoryID = file.get_var(true)
		file.close()
