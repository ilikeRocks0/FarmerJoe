class_name Soil_State
extends Node

@export
var picture: CompressedTexture2D
@export
var grow_time: int

var parent: Soil

func enter() -> void:
	if picture:
		parent.picture.texture = picture
	if grow_time > 0:
		parent.timer.start(grow_time)
	pass

func exit() -> void:
	pass
	
func process_frame(delta: float) -> Soil_State:
	return null

func water() -> Soil_State:
	return null
	
func plow()-> Soil_State:
	return null


func grow()-> Soil_State:
	return null
