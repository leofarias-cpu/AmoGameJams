extends Area2D
signal player_entered

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.




func _on_area_entered(area):
	if area.name == "Colisor":
		emit_signal("player_entered")
