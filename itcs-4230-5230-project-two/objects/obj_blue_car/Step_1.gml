
if((smash >= 15) and (loop_smash == 0)) {
	
	if(instance_exists(obj_player_car)) {
		if(distance_to_object(obj_player_car) < 100){
			loop_smash ++
			alarm[3] = 1
		}
	}
}

