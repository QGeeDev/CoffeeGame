extends Node


var protoset: ItemProtoset;

func _init():
	var file = FileAccess.open("res://resources/data/inventory/item_definitions.json", FileAccess.READ)
	var content = file.get_as_text();
	protoset = ItemProtoset.new();
	protoset.parse(content);
