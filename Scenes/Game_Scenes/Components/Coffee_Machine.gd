extends Node2D

enum MACHINE_STATE {IDLE, BREWING, BROKEN};

var _inventory: InventoryStacked;
var _brewingTimer: Timer;
var TOTAL_BREW_TIME: float;
var currentState: MACHINE_STATE;

func _init():
	currentState = MACHINE_STATE.IDLE;
	TOTAL_BREW_TIME = 5;
	

# Called when the node enters the scene tree for the first time.
func _ready():
	_inventory = get_node("Inventory");
	_brewingTimer = get_node("Timer");


func _on_static_body_2d_input_event(viewport, event, shape_idx):
	if(event is InputEventScreenTouch and event.is_pressed()):
		print_debug("Event triggered");
		_inventory.create_and_add_item("beans");


func _on_inventory_stacked_item_added(item):
	match(item.get_property("id")):
		"beans":
			print_debug("Beans detected");
			BeginBrewing();

func BeginBrewing():
	if(!_inventory.has_item_by_id("beans") || currentState != MACHINE_STATE.IDLE):
		pass;
		
	_inventory.remove_item(_inventory.get_item_by_id("beans"));
	_brewingTimer.wait_time = TOTAL_BREW_TIME;
	currentState = MACHINE_STATE.BREWING;
	_brewingTimer.start()

func _on_timer_timeout():
	_inventory.create_and_add_item("coffee_shot");
	currentState = MACHINE_STATE.IDLE;
	for item in _inventory.get_items():
			print_debug(item.get_property("name"))
