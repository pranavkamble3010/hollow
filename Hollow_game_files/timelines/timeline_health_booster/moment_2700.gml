/// @description Create health booster object which increases health after every 2 minutes


/*if(instance_exists(obj_saber)){

instance_create_layer(obj_saber.x+600,obj_saber.y,"layer_geometry",obj_enemy);

instance_create_layer(obj_saber.x+900,obj_saber.y,"layer_geometry",obj_enemy);
//alarm[0] = 300;

}



else if(instance_exists(obj_saber_AI)){

instance_create_layer(obj_saber_AI.x+600,obj_saber_AI.y,"layer_geometry",obj_enemy);

instance_create_layer(obj_saber_AI.x+900,obj_saber_AI.y,"layer_geometry",obj_enemy);
//alarm[0] = 300;

}*/

show_debug_message("timeline started");
instance_create_layer(900,900,"layer_player",obj_health_booster);




