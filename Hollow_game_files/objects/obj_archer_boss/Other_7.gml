switch(sprite_index)
{
	case spr_archer_shoot:
	{
		instance_create_layer(x, y+(sprite_height/2), "layer_player", obj_arrow_boss);
		sprite_index = spr_archer_idle;
		can_move=50;
	}
}