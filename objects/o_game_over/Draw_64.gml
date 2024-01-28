	draw_text(room_width/2,60,"GAME OVER")

if count < 10 {
	draw_set_color(c_white)
	draw_set_halign(fa_center)
	draw_text(room_width/2,room_height/2,"PRESS ENTER")
	draw_text(room_width/2,room_height/2+32,(m_new ? "NEW ":"")+"HIGHSCORE: "+string(global.highscore))
}