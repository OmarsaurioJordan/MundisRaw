///s_cam_zoom();
// debe existir la variable global zoomlimit

// hacer las cosas
var velcambio = 0.1;
var rezi = 0;
if mouse_wheel_down() {
    rezi = 1 + velcambio;
}
if mouse_wheel_up() {
    rezi = 1 - velcambio;
}
if rezi != 0 {
    var mx = mouse_x;
    var my = mouse_y;
    var cx = (mx - view_xview[0]) / view_wview[0];
    var cy = (my - view_yview[0]) / view_hview[0];
    view_hview[0] = round(clamp(view_hview[0] * rezi, 400, room_height));
    view_wview[0] = round(view_hview[0] * relation_wh);
    view_xview[0] = mx - cx * view_wview[0];
    view_yview[0] = my - cy * view_hview[0];
    s_cam_limit();
}

