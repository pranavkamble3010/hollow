#region collision
vsp = vsp + grv;
//Horizontal Collision
if(place_meeting(x+hsp, y, obj_geometry))
{
	while(!place_meeting(x+sign(hsp), y, obj_geometry))
	{
		x = x + sign(hsp);
	}
}
else
{
	x = x + hsp;
}
//Vertical Collision
if(place_meeting(x, y+vsp, obj_geometry))
{
	while(!place_meeting(x, y+sign(vsp), obj_geometry))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;
x_diff =  obj_archer.x-x;
#endregion
switch(saber_state)
{
	case saber_AI_boss_states.run:
	{
		grv = 0.25;
		#region run
		if(place_meeting(x+1, y, obj_geometry) || place_meeting(x-1, y, obj_geometry))
		{
			saber_state = saber_AI_states.climb;
		}
		else
		{
			sprite_index = spr_saber_run;
			image_xscale = 1*sign(x_diff);
			hsp = move_speed*sign(x_diff);
		}
		if(place_meeting(x+1, y, obj_archer) || place_meeting(x-1, y, obj_archer))
		{
			saber_state = saber_AI_states.attack;
		}
		#endregion
	}
	break;
	case saber_AI_boss_states.climb:
	{
		#region climb
		
		if(place_meeting(x+5, y, obj_geometry) || place_meeting(x-5, y, obj_geometry))
		{
			y = y - climb_height;
			hsp = 0;
			grv = 0;
			if(place_meeting(x+1, y, obj_geometry))
			{
				sprite_index = spr_saber_climb;
				image_xscale = 1;
			}
			if(place_meeting(x-1, y, obj_geometry))
			{
				sprite_index = spr_saber_climb;
				image_xscale = -1;
			}
		}
		else
		{
			saber_state = saber_AI_boss_states.run;
		}
		#endregion
	}
	break;
	case saber_AI_boss_states.attack:
	{
		#region attack
		if(place_meeting(x+5, y, obj_archer) || place_meeting(x-5, y, obj_archer))
		{
			if(can_attack<=0)
			{
				hsp = 0;
				x_diff = obj_archer.x-x;
				sprite_index = spr_saber_attack_1;
				image_xscale = 1*sign(x_diff);
				global.archer_health-=2;
				can_attack = 70;
			}
		}
		else
		{
			saber_state = saber_AI_states.run;
		}
		#endregion
	}
	break;
}
//show_debug_message(saber_state);
can_attack--;
