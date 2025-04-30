function leaderboard_save() {
    var file = working_directory + "highscore";
    var handle = file_text_open_write(file);
    
    file_text_write_real(handle, obj_score_manager.highscore);
    
    file_text_close(handle);
}

function leaderboard_load() {
    var file = working_directory +"highscore";
    try {
        var hande = file_text_open_read(file);
        obj_score_manager.highscore = file_text_read_real(handle);
        file_text_close(handle);
    } catch (_exception) {
        obj_score_manager.highscore = 0;
    }
}