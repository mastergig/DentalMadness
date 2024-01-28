var _k_left = keyboard_check(ord("A"))
var _k_right = keyboard_check(ord("D"))
var _k_up = keyboard_check(ord("W"))
var _k_down = keyboard_check(ord("S"))
var _k_shoot = keyboard_check(ord("J"))
var _k_special = keyboard_check(ord("K"))

var _move_y = 0
var _move_x = 0
var _move_speed = 4

if _k_left
	_move_x-=1
	
if _k_right
	_move_x+=1
	
if _k_up
	_move_y-=1
	
if _k_down
	_move_y+=1
	
var _can_move = !m_drill_damage

if _can_move {
	
	var _next_x = x+_move_x*_move_speed
	var _next_y = y+_move_y*_move_speed
	
	if _next_x < 16 {
		_next_x = 16	
	}
	
	if _next_x > 320 {
		_next_x = 320	
	}
	
	if _next_x >= 16 && _next_x <= 320 {
		x = _next_x
	}
	
	if _next_y < 16 {
		_next_y = 16	
	}
	
	if _next_y > 240 {
		_next_y = 240	
	}
	
	if _next_y >= 16 && _next_y <= 240 {
		y = _next_y	
	}
}

if (_k_special) {
	if (global.special > 99) {
		global.special = 0
		m_special_count = m_special_count_config
	}
}

if !m_special {
	if (_k_shoot) {
		m_weapon.m_shoot = true
		m_drill_count =  m_drill_count_config
	}

	if (m_weapon.m_shoot) {
		m_animation_shooting = true
	}
}

if m_special_count > 0 {
	m_special = true
	m_special_count--
	m_weapon_special.m_shoot = true	
} else {	
	m_special = false
	m_weapon_special.m_shoot = false
}



if (m_drill_count > 0) {
	m_can_drill = false	
	m_drill_count--
} else {
	m_can_drill = true	
}

if m_special {
	sprite_index = s_player_special
} else if m_animation_shooting {
	sprite_index = s_player_shooting
} else {
	if m_can_drill {
		sprite_index = s_player_drill
	} else {
		sprite_index = s_player_idle	
	}
}

if lives < 1 {
	room_goto(r_game_over)
}