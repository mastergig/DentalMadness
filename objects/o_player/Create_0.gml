score = 0
lives = 100
global.special = 0

instance_create_depth(x,y,depth,o_score)

m_weapon = instance_create_depth(x,y,depth,o_weapon)

with(m_weapon) {
	m_father = other	
}

m_weapon_special = instance_create_depth(x,y,depth,o_weapon_special)
with(m_weapon_special) {
	m_father = other	
}

instance_create_depth(x,y,depth,o_enemy_creator)

m_drill = instance_create_depth(x,y,depth,o_player_drill)

with(m_drill) {
	m_father = other	
}

m_animation_shooting = false
m_can_drill = true 
m_drill_damage = false

m_drill_count_config = 60
m_drill_count = 0

m_special_count_config = 120
m_special_count = 0
m_special = false


layer_hspeed("Backgrounds_1",-0.1)