if(instance_exists(obj_player_car)) {
    if (obj_player_car.gun) {
        draw_set_color(c_green);
        draw_set_valign(fa_top);
        draw_set_halign(fa_left);
        draw_text(10, 60, "Rocket");
    } else {
        draw_set_color(c_red);
        draw_set_valign(fa_top);
        draw_set_halign(fa_left);
        draw_text(10, 60, "Rocket");
    }
}