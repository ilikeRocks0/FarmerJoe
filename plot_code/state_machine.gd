extends Node

@export
var starting_state: Soil_State

var current_state: Soil_State

func init(parent: Soil) -> void:
	for child in get_children():
		child.parent = parent
	change_state(starting_state)

func change_state(new_state: Soil_State) -> void:
	if current_state:
		current_state.exit()
		
	current_state = new_state
	current_state.enter()


func process_frame(delta: float):
	var new_state = current_state.process_frame(delta)
	if new_state:
		change_state(new_state)

func water():
	var new_state = current_state.water()
	if new_state:
		change_state(new_state)

func plow():
	var new_state = current_state.plow()
	if new_state:
		change_state(new_state)

func seed():
	var new_state = current_state.seed()
	if new_state:
		change_state(new_state)
		
func grow():
	var new_state = current_state.grow()
	if new_state:
		change_state(new_state)
