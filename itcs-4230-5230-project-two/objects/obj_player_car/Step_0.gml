if( y - 100 > room_height) {
    instance_destroy();
}



if(keyboard_check_pressed(ord("H"))) {
    if(hit < 2) {
    	hit++
    	current_bumper = spr_car_good_bumper;
    }
}


if(keyboard_check_pressed(ord("G"))) {

	gun= true
}