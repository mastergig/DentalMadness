function f_audio_play(_audio){
	var _audio_x = audio_play_sound(_audio,1,0)
	audio_sound_pitch(_audio_x,random_range(0.5,1.5))
}