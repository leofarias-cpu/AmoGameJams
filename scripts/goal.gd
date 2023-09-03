extends Area2D
signal level_won(next_level)

@export var next_level : PackedScene

func _ready():
	pass

func _on_area_entered(area):
	if area.name == "Colisor":	
		print_debug("Won!")
		emit_signal("level_won", next_level )
