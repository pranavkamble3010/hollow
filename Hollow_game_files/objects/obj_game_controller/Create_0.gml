global.saber_health = 20;
global.archer_health = 20;
global.saber_attack = 10;
global.archer_attack = 5;
global.player_experience = 0;
global.player_level = 1;
global.saber_max_health = 20;
global.archer_max_health = 20;
global.max_experience = 100;
global.current_player = obj_saber;
window_set_fullscreen(true)
temp = 0;

//Initiate timeline_health_booster
timeline_running = true;
timeline_index = timeline_health_booster;