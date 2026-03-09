extends Control

func  _ready() -> void:
	$Label2.text = str("High score = ", Global.score)
	Global.score = 0


func _on_texture_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scene/main_menu.tscn")


func _on_restart_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scene/game.tscn")
