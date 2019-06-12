if(room == rm_menu)
{
	if(!already_playing_1)
	{
		audio_stop_all()
		already_playing_2 = false;
		audio_play_sound(snd_level_1, 10, true);
		already_playing_1 = true;
	}
}
else if(room == rm_boss_1 || room == rm_boss_2)
{
	if(!already_playing_2)
	{
		audio_stop_all()
		already_playing_1 = false;
		audio_play_sound(snd_boss, 10, true);
		already_playing_2 = true;
	}
}