current_bumper = spr_car_bad_bumper;

if( shield) {
	shield = false
} else {
	hit--;
}

if(hit == 0) {
	instance_destroy(self);
}