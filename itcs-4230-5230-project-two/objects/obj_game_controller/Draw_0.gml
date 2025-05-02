

if (!instance_exists(obj_player_car)) {
    depth = -100;
    
    // Update high score if needed
    if (obj_score_manager.miles > obj_score_manager.highscore) {
        obj_score_manager.highscore = obj_score_manager.miles;
        leaderboard_save(); // Save new highscore
    }
    
    draw_set_font(score_fnt_1);
    draw_set_color(c_red);
    
    draw_set_valign(fa_middle);
    draw_set_halign(fa_center);
    
    draw_text(room_width/2 -300, car_y - 40, "GAME OVER | " + string(obj_score_manager.miles));
    draw_text(room_width/2 - 300, car_y + 40, "Press 'R' to Restart");
    draw_text(room_width/2 - 300, car_y + 100, "HIGHSCORE: " + string(obj_score_manager.highscore));
    
    draw_set_color(c_white);
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);
    
    if (keyboard_check(ord("R"))) {
        room_restart();
    }
} else {
    if (obj_player_car.gun) {
        draw_set_color(c_green);
        draw_text(1380, 70, "Rocket");
    } else {
        draw_set_color(c_red);
        draw_text(1380, 70, "Rocket");
    }
}