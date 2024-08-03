class_name Soil
extends Node2D


@onready
var picture = $picture
@onready
var timer = $timer

@onready
var state_machine = $state_machine

# Called when the node enters the scene tree for the first time.
func _ready():
	state_machine.init(self)
	pass # Replace with function body.

func _process(delta):
	state_machine.process_frame(delta)
	
func plow():
	pass
	
func water():
	pass
	

	
