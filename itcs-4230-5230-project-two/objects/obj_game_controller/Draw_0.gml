if (!instance_exists(obj_player_car)) {
    draw_set_font(score_fnt_1);
    draw_set_color(c_red);
    
    draw_set_valign(fa_middle);
    draw_set_halign(fa_center);
    
    draw_text(room_width/2, (room_height/2) - 40, "GAME OVER | " + string(obj_score_manager.miles));
    draw_text(room_width/2, (room_height/2) + 40, "Press 'R' to Restart");
    
    draw_set_color(c_white);
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);
    
    if (keyboard_check(ord("R"))) {
        room_restart();
    }
}