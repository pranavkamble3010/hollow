if(global.player_experience>=global.max_experience)
{
	global.player_level+=1;
	global.max_experience+=100;
	global.saber_max_health+=1;
	global.saber_health = global.saber_max_health;
	global.archer_health = global.archer_max_health
	global.archer_attack+=1;
}
if(room != rm_boss_1 && room != rm_boss_2)
{
	if(global.saber_health<=0 || global.saber_health<=0)
	{
		instance_destroy(all);
		room_goto(rm_lose);
	}
}
//show_debug_message(object_get_name(global.current_player));
