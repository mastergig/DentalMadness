if m_speed_count < m_speed_count_config
	m_speed_count++
else {
	m_speed_count = 0
	m_speed_pointer++
}

var _created = false
for (var _i = 0; _i < m_line_number; _i++) {
	var _current_line = ds_map_find_value(m_lines, _i)
	var _current_char = string_char_at(_current_line,m_speed_pointer)
	
	if (string_length(_current_line) < m_speed_pointer+1) {
		m_speed_pointer = 0
	}
	
	if (_current_char != " ") {
		if (ds_map_exists(m_dic, _current_char)) {
			var _enemy = ds_map_find_value(m_dic, _current_char)
			instance_create_depth(340,32+32*_i,0,_enemy)
			_created = true
		}
	}
}

if _created {
	m_speed_count = 0
	m_speed_pointer++
}