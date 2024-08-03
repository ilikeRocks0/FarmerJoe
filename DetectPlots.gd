extends Area2D

@onready
var detect = $DetectPlotRange


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_entered(area):
	print("enter" +  str(area))
	pass # Replace with function body.


func _on_area_exited(area):
	print("leaving" +  str(area))
	pass # Replace with function body.
