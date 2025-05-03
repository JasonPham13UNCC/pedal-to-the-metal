y += 6

if(instance_exists(obj_tutoral_car) and  y - 100 > room_height) {
	y = -room_height

}
else if( y - 100 > room_height) {
    instance_destroy();
}