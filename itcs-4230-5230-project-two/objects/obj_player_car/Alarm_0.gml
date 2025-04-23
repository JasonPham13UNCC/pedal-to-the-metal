if (keyboard_check(vk_up)) {
    vspeed = clamp(vspeed - 0.18, -10, 10);
    alarm[0] = 1;
} else if (keyboard_check(vk_down)) {
    vspeed = clamp(vspeed + 0.18, -10, 10);
    alarm[0] = 1;
}

if (keyboard_check(vk_left)) {
    hspeed = clamp(hspeed - 0.25, -8, 8);
    alarm[0] = 1;
} else if (keyboard_check(vk_right)) {
    hspeed = clamp(hspeed + 0.25, -8, 8);
    alarm[0] = 1;
}