
if(nothit) {
	nothit = false
	if(other.x > x) {
	   other.x += 10;
	} else {
	   other.x -= 10;
	}
	alarm[0]= 3;
}