switch(sprite_index)
{
	case spr_archer_shoot:
	{
		instance_create_layer(x, y+15, "layer_player", obj_arrow_AI);
		sprite_index = spr_archer_idle;
	}
	break;
}