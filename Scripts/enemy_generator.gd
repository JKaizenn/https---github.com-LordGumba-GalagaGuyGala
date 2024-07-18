extends Node2D

@export var EnemyScene: PackedScene

var margin = 8
var screen_width = ProjectSettings.get_setting("display/window/size/viewport_width")

@onready var spawner_component = $SpawnerComponent as SpawnerComponent
@onready var base_enemy_spawn_timer = $BaseEnemySpawnTimer

#Called when the node enters the scene tree for the first time.
func _ready():
	base_enemy_spawn_timer.timeout.connect(handle_spawn.bind(EnemyScene, base_enemy_spawn_timer))

#Add other enemy spawn timers here:



func handle_spawn(enemy_scene: PackedScene, timer: Timer) -> void:
	spawner_component.scene = enemy_scene
	spawner_component.spawn(Vector2(randf_range(margin, screen_width - margin), -16))
	timer.start()
