if(timer) {

	var spawn = irandom_range(0,4);
	timer = false 
	for(var i = 0; i < 5; i++) {
		if(i == spawn) {
			var powerup = irandom_range(0,2)
			if(powerup == 0) {
				instance_create_layer(i*225 + x, y+ irandom_range(-120,120), "Instances", obj_gun)
			}
			else if (powerup == 1) {
				instance_create_layer(i*225 + x, y+ irandom_range(-120,120), "Instances", obj_health)
			}
			else {
				instance_create_layer(i*225 + x, y+ irandom_range(-120,120), "Instances", obj_shield)
			}
		}
	}
}