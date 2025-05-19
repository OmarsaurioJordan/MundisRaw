///s_cam_move();
// debe existir la variable global clicdxy

if clicdxy[0] != 0 and clicdxy[1] != 0 {
    view_xview[0] += clicdxy[0] - mouse_x;
    view_yview[0] += clicdxy[1] - mouse_y;
    s_cam_limit();
}
if mouse_check_button_pressed(mb_middle) {
    clicdxy[0] = mouse_x;
    clicdxy[1] = mouse_y;
}
else if mouse_check_button_released(mb_middle) {
    clicdxy[0] = 0;
    clicdxy[1] = 0;
}

