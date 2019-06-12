if(hlth<=0)
{
	instance_destroy();
	
}

xdiff = x-previous_x;
sprite_index = spr_bull;
image_xscale = sign(xdiff);
previous_x = x;