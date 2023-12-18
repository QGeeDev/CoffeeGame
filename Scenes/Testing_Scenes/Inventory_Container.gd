extends Node2D
var protoset: ItemProtoset;

func _init():
	var file = FileAccess.open("res://resources/data/inventory/item_definitions.json", FileAccess.READ)
	var content = file.get_as_text();
	protoset = ItemProtoset.new();
	protoset.parse(content);


# Called when the node enters the scene tree for the first time.
func _ready():
	print_debug(protoset.get_prototype("cheap_beans"))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
