extends Node2D

var INVENTORY: Inventory

func _init():
	INVENTORY = Inventory.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	var protoset: ItemProtoset = get_node("%Inventory_Base").protoset;
	var itemProtoset = protoset.get_prototype("cheap_beans");
	var item = 
	INVENTORY.add_item(itemProtoset);


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_static_body_2d_input_event(viewport, event, shape_idx):
	if(event is InputEventScreenTouch):
		print_debug("Event logged");
		print_debug(INVENTORY.get_items());
