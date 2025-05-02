if (can_play_splash) {
    audio_play_sound(snd_puddle_splash, 1, false);
    can_play_splash = false;
    alarm[1] = 30;
}

if(nothit) {
	nothit = false
	if(other.x > x) {
        if((other.x + 10) > obj_barrier) {
            other.x -= 10;
        } else {
            other.x += 10;
        }
	} else {
        if((other.x - 10) < obj_barrier) {
            other.x += 10;
        } else {
            other.x -= 10;
        }
	}
	alarm[0]= 3;
}