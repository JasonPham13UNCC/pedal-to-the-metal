if (can_play_splash) {
    audio_play_sound(snd_puddle_splash, 1, false);
    can_play_splash = false;
    alarm[1] = 30;
}

if(nothit) {
	nothit = false
	// on left
	if(other.x > x) {
		
		other.x +=10
		
	} 
	// on right
	else {
		other.x -=10
		
	}
	
	alarm[0]= 3;
}