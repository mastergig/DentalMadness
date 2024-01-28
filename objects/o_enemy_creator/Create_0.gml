m_lines = ds_map_create()

m_line = 0
m_line_number = 6

ds_map_add(m_lines,0,"    a b        a      p          g      a       b          i     ");
ds_map_add(m_lines,1," a     p  g  b   g        a   b      p        a        p      g  ");
ds_map_add(m_lines,2,"    a          p    a   a        g        p       p        i     ");
ds_map_add(m_lines,3," a    p   g  b    g    a  a p    b   b        a                  ");
ds_map_add(m_lines,4,"    a      a   a    g     b   p  g                     p      g  ");
ds_map_add(m_lines,5,"       a     a  g    g  b          p     a                 i     ");

m_dic = ds_map_create()
ds_map_add(m_dic,"a",o_enemy_apple)
ds_map_add(m_dic,"g",o_enemy_apple_green)
ds_map_add(m_dic,"i",o_enemy_ice_cream)
ds_map_add(m_dic,"p",o_enemy_picole)
ds_map_add(m_dic,"b",o_enemy_burger)


m_speed_count = 0
m_speed_count_config = 200
m_speed_pointer = 0