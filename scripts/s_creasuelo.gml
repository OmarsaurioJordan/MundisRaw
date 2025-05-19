///s_creasuelo();

// crear estructuras rejilla
globalvar grid_bioma, grid_grupo;
grid_bioma = ds_grid_create(floor(room_width / 32), floor(room_height / 32));
ds_grid_clear(grid_bioma, m_bio_mar);
grid_grupo = ds_grid_create(floor(room_width / 32), floor(room_height / 32));
ds_grid_clear(grid_grupo, m_grp_neutro);
// iniciar busqueda
var esc = (616 / room_width) * 32;
var mapa = surface_create(616, 396);
surface_set_target(mapa);
// obtener biomas
draw_sprite(d_mapas, 2, 0, 0);
for (var w = 0; w < ds_grid_width(grid_bioma); w++) {
    for (var h = 0; h < ds_grid_height(grid_bioma); h++) {
        switch surface_getpixel(mapa, (w + 0.5) * esc, (h + 0.5) * esc) {
            case c_aqua:
                tile_add(dd_suelo, (6 + irandom(2)) * 64, 0,
                    64, 64, (w + 0.5) * 32, (h + 0.5) * 32, 1000);
                ds_grid_set(grid_bioma, w, h, m_bio_nevado);
                break;
            case c_lime:
                tile_add(dd_suelo, (3 + irandom(2)) * 64, 0,
                    64, 64, (w + 0.5) * 32, (h + 0.5) * 32, 1000);
                ds_grid_set(grid_bioma, w, h, m_bio_bosque);
                break;
            case c_yellow:
                tile_add(dd_suelo, irandom(2) * 64, 0,
                    64, 64, (w + 0.5) * 32, (h + 0.5) * 32, 1000);
                ds_grid_set(grid_bioma, w, h, m_bio_desierto);
                break;
        }
    }
}
// obtener grupos
draw_sprite(d_mapas, 1, 0, 0);
for (var w = 0; w < ds_grid_width(grid_grupo); w++) {
    for (var h = 0; h < ds_grid_height(grid_grupo); h++) {
        if (surface_getpixel_ext(mapa, (w + 0.5) * esc, (h + 0.5) * esc) >> 24) & 255 == 0 {
            continue;
        }
        switch surface_getpixel(mapa, (w + 0.5) * esc, (h + 0.5) * esc) {
            case c_aqua:
                ds_grid_set(grid_grupo, w, h, m_grp_rusia);
                break;
            case c_lime:
                ds_grid_set(grid_grupo, w, h, m_grp_brazil);
                break;
            case c_yellow:
                ds_grid_set(grid_grupo, w, h, m_grp_china);
                break;
            case c_blue:
                ds_grid_set(grid_grupo, w, h, m_grp_usa);
                break;
            case c_red:
                ds_grid_set(grid_grupo, w, h, m_grp_africa);
                break;
            case c_fuchsia:
                ds_grid_set(grid_grupo, w, h, m_grp_alemania);
                break;
            case c_black:
                ds_grid_set(grid_grupo, w, h, m_grp_arabia);
                break;
            case c_white:
                ds_grid_set(grid_grupo, w, h, m_grp_inglaterra);
                break;
        }
    }
}
// finalizar
surface_free(mapa);
surface_reset_target();

