///s_cam_limit();

if view_angle[0] == 0 or view_angle[0] == 180 {
    view_xview[0] = clamp(view_xview[0], -m_size_margen,
        (room_width - view_wview[0]) + m_size_margen);
    view_yview[0] = clamp(view_yview[0], -m_size_margen,
        (room_height - view_hview[0]) + m_size_margen);
}
else {
    var dif = (view_wview[0] - view_hview[0]) / 2;
    view_xview[0] = clamp(view_xview[0], -m_size_margen - dif,
        (room_width - view_wview[0]) + m_size_margen + dif);
    view_yview[0] = clamp(view_yview[0], -m_size_margen + dif,
        (room_height - view_hview[0]) + m_size_margen - dif);
}
view_xview[0] = round(view_xview[0]);
view_yview[0] = round(view_yview[0]);

