if(keyboard_check_pressed(ord("1")))
{
   if window_get_fullscreen()
   {
      window_set_fullscreen(false);
   }
   else
   {
      window_set_fullscreen(true);
   }
}
if(keyboard_check_pressed(ord("X")))
{
	global.player_experience += 100;
}
if(keyboard_check_pressed(ord("2")))
{
	room_goto(rm_forest);
}
if(keyboard_check_pressed(ord("3")))
{
	room_goto(rm_mountains);
}
if(keyboard_check_pressed(ord("4")))
{
	room_goto(rm_boss_1);
}
if(keyboard_check_pressed(ord("5")))
{
	room_goto(rm_boss_2);
}
if(keyboard_check_pressed(vk_escape))
{
	game_end();
}
if(keyboard_check_pressed(ord("H")))
{
	global.saber_max_health += 1;
	global.saber_health = global.saber_max_health;
	global.archer_max_health += 1;
	global.archer_health = global.archer_max_health;
	
}