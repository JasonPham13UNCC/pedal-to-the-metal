

sprite_index = spr_blue_car
if(instance_exists(obj_player_car)) {
	move_towards_point(obj_player_car.x, obj_player_car.y, 5)
}

alarm[5]= 60