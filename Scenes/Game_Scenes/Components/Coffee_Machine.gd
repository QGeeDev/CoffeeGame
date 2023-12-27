extends Node2D

var _inventory: InventoryStacked;

# Called when the node enters the scene tree for the first time.
func _ready():
	_inventory = get_node("Inventory");


func _on_static_body_2d_input_event(viewport, event, shape_idx):
	if(event is InputEventScreenTouch and event.is_pressed()):
		print_debug("Event triggered");
		_inventory.create_and_add_item("beans");


func _on_inventory_stacked_item_added(item):
	match(item.get_property("id")):
		"beans":
			print_debug("Beans detected");
			if(!_inventory.has_item(_inventory.get_item_by_id("coffee_shot"))):
				_inventory.remove_item(_inventory.get_item_by_id("beans"));
				_inventory.create_and_add_item("coffee_shot")
				for inv_item in _inventory.get_items():
					print_debug(inv_item.get_property("name"));
			else:
				for inv_item in _inventory.get_items():
					print_debug(inv_item.get_property("name"));
