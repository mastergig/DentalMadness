if m_freeze_count < m_freeze_config {
	m_freeze_count++
} else {
	x-= m_speed	
}

var _bullet = instance_place(x,y,o_bullet)
if _bullet != noone {
	m_freeze_count = 0
	m_hp -= _bullet.m_damage
	f_audio_play(a_enemy_hurt)
	instance_destroy(_bullet)
	if image_angle < 30
		image_angle-=5
}

if m_hp < 0 {
	var _score = m_score
	score+= _score
	f_text_show(_score)
	if global.special < 99 {
		global.special+= floor(_score/4)
		if global.special >= 100 {
			f_audio_play(a_special)
		}
	}
	f_audio_play(a_explode)
	f_particles_create(x,y,fx_explode,10)
	instance_destroy()	
}

if image_angle < 0
	image_angle+= 0.1

var _player = instance_nearest(x,y,o_player)
if _player.x+ 64 > x {
	if !place_meeting(x,y,o_enemy) {
		move_towards_point(x,_player.y,m_speed)	
	}
}

if _player.m_can_drill && place_meeting(x,y,o_player.m_drill) {
	speed = 0
	m_hp-= 0.25
	o_player.m_drill.visible = true
	if !audio_is_playing(a_drill) {
		f_audio_play(a_drill)	
	}
}

if place_meeting(x,y,o_player) {
	if !audio_is_playing(a_hurt) {
		f_audio_play(a_hurt)	
	}
	lives -= 1	
}