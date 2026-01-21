extends Node2D

 
var car_Scene : PackedScene = preload("res://Scene/car.tscn")




func _on_car_timer_timeout() :
	var car = car_Scene.instantiate() as Area2D
	var pos_marker = $CarStartPosition.get_children().pick_random() as Marker2D
	car.position = pos_marker.position
	$Objects.add_child(car) 
	car.connect("body_entered",go_to_title)
	
func go_to_title(body):
	print(body)
	print('player car collision')

func _on_f_inish_area_2d_body_entered(body: Node2D) -> void:
	print("entered")
