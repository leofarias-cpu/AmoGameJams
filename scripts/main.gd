extends Node2D

@onready var player = $level/player/Colisor


func _ready():
	$/Goal.level_won.connect(on_level_won)
	$/Kill_box.player_entered.connect(restart)

func _physics_process(delta):
	#if not player.has_overlapping_areas():
		#print('morreu')
		#restart()
		pass
		
func restart():
	get_tree().reload_current_scene()

func on_level_won(next_level: PackedScene):
	var next = next_level.instantiate()
	change_level(next)
	
func change_level(next_level):	
	$level.queue_free()
	add_child(next_level)
