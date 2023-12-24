extends Node2D

var _inventory: Inventory;

# Called when the node enters the scene tree for the first time.
func _ready():
	_inventory = get_node("Inventory");


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_static_body_2d_input_event(viewport, event, shape_idx):
	if(event is InputEventScreenTouch and event.is_pressed()):
		print_debug("Event triggered");
		_inventory.create_and_add_item("cheap_beans");
		for item in _inventory.get_items():
			print_debug(item.get_property("name"));
