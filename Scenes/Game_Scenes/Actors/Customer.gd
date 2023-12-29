extends Node2D

enum CHARACTER_STATE { INACTIVE, IDLE, ENTERING, WAITING_ORDER, WAITING_PRODUCT, LEAVING };

var current_state: CHARACTER_STATE;


func _init():
	current_state = CHARACTER_STATE.INACTIVE;
	
# Called when the node enters the scene tree for the first time.
func _ready():
	current_state = CHARACTER_STATE.ENTERING;


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	match(current_state):
		CHARACTER_STATE.ENTERING:
			pass;
		CHARACTER_STATE.WAITING_ORDER:
			pass;
		CHARACTER_STATE.WAITING_PRODUCT:
			pass;
		CHARACTER_STATE.LEAVING:
			pass;
		CHARACTER_STATE.IDLE:
			pass;
		CHARACTER_STATE.INACTIVE:
			pass; # Remove itself from scene
