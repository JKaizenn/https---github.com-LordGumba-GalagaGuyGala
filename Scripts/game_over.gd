extends Control

#Game Over Screen, returns player to main menu screen
func _process(delta):
	pass
	if Input.is_action_just_pressed("ui_accept"):
		get_tree().change_scene_to_file("res://Scenes/menu.tscn")
