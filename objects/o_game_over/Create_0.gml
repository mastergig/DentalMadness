count = 0

m_new = false
if score > global.highscore {
	f_audio_play(a_highscore)
	m_new = true
	ini_open("save")
	ini_write_real("highscore","0",score)
	ini_close()
	global.highscore = score
}