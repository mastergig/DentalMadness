global.particles_system = part_system_create()
audio_play_sound(a_default,1,1)

global.highscore = 0
score = 0

ini_open("save")
global.highscore = ini_read_real("highscore","0",0)
ini_close()

display_set_gui_size(320,240)
s_init()
room_goto_next()