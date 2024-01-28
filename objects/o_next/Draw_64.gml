if count < 10 {
	draw_set_color(c_black)
	draw_set_halign(fa_center)
	draw_text(room_width/2,room_height/2,"PRESS ENTER")
}

draw_text(room_width/2,80,"HIGHSCORE: "+string(global.highscore))