class_name CraftingComponent
extends Node

var RECIPE_FILE_LOCATION: String
var RECIPE_LIST: JSON
# Called when the node enters the scene tree for the first time.
func _ready():
	RECIPE_LIST = JSON.new()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func set_recipe_file_location(file_path: String) -> void: 
	RECIPE_FILE_LOCATION = file_path;
