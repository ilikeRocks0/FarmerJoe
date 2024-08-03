extends Area2D

@onready
var detect = $DetectPlotRange

var connected_soil = []
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_entered(area):
	connected_soil.append(area)
	pass # Replace with function body.


func _on_area_exited(area):
	connected_soil.erase(area)
	pass # Replace with function body.

func plow_soil():
	for soil in connected_soil:
		soil.plow()
		
func water_soil():
	for soil in connected_soil:
		soil.water()
	
func seed_soil():
	for soil in connected_soil:
		soil.seed()
