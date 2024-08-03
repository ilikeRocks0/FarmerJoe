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

func _process(delta):
	state_machine.process_frame(delta)
	
func plow():
	state_machine.plow()
	
func water():
	state_machine.water()

func _on_timer_timeout():
	state_machine.grow()
