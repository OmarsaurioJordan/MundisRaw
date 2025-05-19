///s_dat_construir(id_objeto, nivel);
// ret: segundos que tarda en construirse

var res = 0;
switch argument0 {
    case o_centro: res = 120; break;
    case o_cohete: res = 80; break;
    case o_fuerte: res = 50; break;
    case o_escuela: res = 70; break;
    case o_bunker: res = 60; break;
    case o_torre: res = 30; break;
    case o_bar: res = 40; break;
    case o_fabrica: res = 40; break;
    case o_vivienda: res = 30; break;
    case o_turbina: res = 50; break;
}
switch argument1 {
    case m_lvl_escombro: res *= 2; break;
    case m_lvl_construir: res *= 1; break;
    case m_lvl_basico: res *= 2; break;
    case m_lvl_medio: res *= 3; break;
    case m_lvl_avanzado: res *= 0; break;
}
return res;
