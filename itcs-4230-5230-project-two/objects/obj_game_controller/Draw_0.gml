if (!instance_exists(obj_player_car)) {
    depth = -1000;
    
    // Update high score if needed
    if (obj_score_manager.miles > obj_score_manager.highscore) {
        obj_score_manager.highscore = obj_score_manager.miles;
        leaderboard_save(); // Save new highscore
    }
    
    draw_set_font(score_fnt_1);
    draw_set_color(c_orange);
    
    draw_rectangle_color(room_width/2-840, car_y - 200, room_width/2+250, car_y+200, c_dkgray,c_dkgray,c_dkgray,c_dkgray,false)
    
    draw_set_valign(fa_middle);
    draw_set_halign(fa_center);
    
    draw_text(room_width/2 -300, car_y - 40, "GAME OVER | " + string(obj_score_manager.miles));
    draw_text(room_width/2 - 300, car_y + 40, "Press 'R' to Restart");
    draw_text(room_width/2 - 300, car_y + 120, "Press 'M' to go to Menu");
    draw_text(room_width/2 - 300, car_y - 120, "HIGHSCORE: " + string(obj_score_manager.highscore));
    
    draw_set_color(c_white);
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);
    
    if (keyboard_check(ord("R"))) {
        room_restart();
    }
    if (keyboard_check(ord("M"))) {
        room_goto(rm_menu_screen)
    }
}