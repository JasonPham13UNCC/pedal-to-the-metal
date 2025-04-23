if (keyboard_check(vk_up)) {
    vspeed = clamp(vspeed - 0.25, -8, 8);
    alarm[0] = 1;
} else if (keyboard_check(vk_down)) {
    vspeed = clamp(vspeed + 0.25, -8, 8);
    alarm[0] = 1;
}
//if (keyboard_check_released(vk_up) && keyboard_check_released(vk_down)) {
    //vspeed = max(vspeed - 0.1, 0);
    //alarm[0] = 1;
//}