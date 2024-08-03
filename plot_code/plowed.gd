extends Soil_State

@export
var plot_plowed_seeded: Soil_State
@export
var plot_plowed_watered: Soil_State

func water():
	return plot_plowed_watered

func soil():
	return plot_plowed_seeded
