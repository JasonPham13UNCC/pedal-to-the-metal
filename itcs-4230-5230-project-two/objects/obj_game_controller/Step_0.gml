if(instance_exists(obj_player_car)) {
	
	camera_set_view_target(1, obj_player_car)
}

if(instance_exists(obj_player_car)) {
	if(obj_player_car.y < 5000) {
		car_y = obj_player_car.y
	}
}
