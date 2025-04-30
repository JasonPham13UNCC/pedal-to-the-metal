
if(instance_exists(obj_tutoral_gun)) {
	rocket = 1
}

if(rocket == 1 and !instance_exists(obj_tutoral_gun)) {
	rocket = -1
	instance_create_layer(250,600, "Instances", obj_space)
	instance_create_layer(1600,600, "Instances", obj_space)
	
	alarm[5] = 60*10
}

if(!instance_exists(obj_police) and rocket == -1) {
	rocket = -2
	instance_create_layer(obj_tutoral_car.x, obj_tutoral_car.y, "Instances", object_motercycle)
	
	instance_create_layer(obj_tutoral_car.x, obj_tutoral_car.y - 600, "Instances", obj_health)
}

if(rocket == -2 and !instance_exists(obj_health)) {
	room_goto(rm_menu_screen)

}