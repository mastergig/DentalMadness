if ( m_bullet_type == e_bullet_type.straight ) {
	x+= m_speed
}

if (x > room_width+32) {
	instance_destroy()	
}