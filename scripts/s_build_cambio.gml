///s_build_cambio(id);

with argument0 {
    if reloj_cambio != 0 {
        reloj_cambio -= dlt;
        if reloj_cambio <= 0 {
            reloj_cambio = 0;
            switch nivel {
                case m_lvl_escombro: instance_destroy(); exit;
                case m_lvl_construir: nivel = m_lvl_basico; break;
                case m_lvl_basico: nivel = m_lvl_medio; break;
                case m_lvl_medio: nivel = m_lvl_avanzado; break;
            }
            vida = s_dat_fortificacion(object_index, nivel);
        }
    }
}

