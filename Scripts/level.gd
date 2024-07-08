extends Node2D

var current_level = 1
var enemies_per_level = 5
var enemies_killed = 0

func _ready():
	start_level(current_level)

func start_level(level):
	current_level = level
	enemies_killed = 0
	spawn_enemies(enemies_per_level * current_level)

func spawn_enemies(amount):
	for i in range(amount):
		# Spawn enemy code here
		pass

func enemy_killed():
	enemies_killed += 1
	if enemies_killed >= enemies_per_level * current_level:
		start_next_level()

func start_next_level():
	current_level += 1
	start_level(current_level)
