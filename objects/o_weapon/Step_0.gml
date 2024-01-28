x = m_father.x+12
y = m_father.y-7

if m_recharge_count > 0 {
	m_recharge_count--	
	m_shoot = false
} else {
	m_can_shoot = true	
}

if (m_shoot && m_can_shoot) {
	instance_create_depth(x,y,depth,m_bullet)
	m_recharge_count = m_recharge_config
	m_can_shoot = false
	m_shoot = false
}