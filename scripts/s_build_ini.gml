///s_build_ini(id);

with argument0 {
    depth = -y;
    nivel = m_lvl_construir;
    vida = s_dat_fortificacion(object_index, nivel);
    reloj_cambio = s_dat_construir(object_index, nivel);
    especial = m_pro_nada;
    grupo = m_grp_neutro;
}

