if(global.current_player == obj_saber)
{
	instance_create_layer(192, 160, "layer_player", obj_saber);
	instance_create_layer(96, 160, "layer_player", obj_archer_boss);
}
else if(global.current_player == obj_archer)
{
	instance_create_layer(192, 160, "layer_player", obj_archer);
	instance_create_layer(96, 160, "layer_player", obj_saber_boss);
}
