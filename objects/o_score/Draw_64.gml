draw_set_color(c_dkgray)
draw_rectangle(0,0,320,16,0)

draw_set_color(c_white)
draw_set_halign(fa_right)
draw_text(312,6,"SCORE: "+string(score))

draw_set_halign(fa_left)
draw_text(8,6,"LIFE: "+string(lives)+ "%")

draw_set_halign(fa_left)

if (global.special > 99) {
	draw_text(100,6+random_range(-0.5,+0.5),"SPECIAL READY!")
} else {
	draw_text(100,6,"SPECIAL: "+string(global.special)+"%")
}

draw_set_color(c_dkgray)
draw_rectangle(0,224,320,240,0)

draw_set_color(c_white)
draw_set_halign(fa_center)
draw_text(room_width/2,room_height-12,"- MOVE: W A S D - SHOOT: J - SPECIAL: K -")