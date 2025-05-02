
if(nothit) {
    audio_play_sound(snd_puddle_splash, 1, false);
	nothit = false
	if(other.x > x) {
	   other.x += 10;
	} else {
	   other.x -= 10;
	}
	alarm[0]= 3;
}