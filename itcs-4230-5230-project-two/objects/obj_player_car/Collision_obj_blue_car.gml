current_bumper = spr_car_bad_bumper;

if( shield) {
	shield = false
} else {
	hit--;
}

if(hit == 0) {
	instance_destroy(self);
	audio_play_sound(snd_crash,10,false);
}