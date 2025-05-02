// === CONFIGURATION ===
var room_width_actual = 1920;
var room_height_actual = 5400;
var screen_width = 1920;
var screen_height = 1080;

// === ENABLE VIEWS ===
view_enabled = true;

// ----------------------------
// VIEWPORT 0: Main Camera View
// ----------------------------
view_visible[0] = true;
view_xport[0] = 0;
view_yport[0] = 0;
view_wport[0] = screen_width;
view_hport[0] = screen_height;

var main_cam = camera_create_view(0, 0, screen_width, screen_height, 0, obj_player_car, -1, -1, -1, 400);
view_camera[0] = main_cam;


// ----------------------------
// VIEWPORT 1: UI Overlay (Right Panel)
// ----------------------------
view_visible[1] = true;
view_xport[1] = 1520; // 1920 - 400
view_yport[1] = 0;
view_wport[1] = 400;
view_hport[1] = 1080;

var ui_cam = camera_create_view(0, 0, 400, 1080, 0, -1, -1, -1, -1, 0);
view_camera[1] = ui_cam;

// ----------------------------
// VIEWPORT 2: Mini-Map (Zoomed Out Full Room)
// ----------------------------
var mini_view_w = 400;
var mini_view_h = mini_view_w * (room_height_actual / room_width_actual); // maintain aspect ratio

view_visible[2] = true;
view_xport[2] = 1520; // Same as UI panel
view_yport[2] = screen_height - mini_view_h; // Bottom-align
view_wport[2] = mini_view_w;
view_hport[2] = mini_view_h;

var mini_cam = camera_create_view(
    0, 0, room_width_actual, room_height_actual, // full room
    0, -1, -1, -1, -1, 0
);
view_camera[2] = mini_cam;
