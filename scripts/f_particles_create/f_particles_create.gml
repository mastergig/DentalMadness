function f_particles_create(_x, _y, _particle, _number){
	
	var _struct = particle_get_info(_particle)
	var _part_type = _struct.emitters[0].parttype.ind
	
	part_particles_create(global.particles_system, _x, _y, _part_type, _number);

}