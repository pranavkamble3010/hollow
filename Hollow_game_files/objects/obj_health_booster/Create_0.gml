/// @description set alarm[0] for 2 min to increase health by 1 for both players

show_debug_message("Survival bonus - add 1 to health!");

if(global.saber_health < 20)
	global.saber_health += 1;
if(global.archer_health < 20)
	global.archer_health += 1;
//alarm[0] = room_speed*120;

timeline_running = true;
timeline_index = timeline_health_booster;