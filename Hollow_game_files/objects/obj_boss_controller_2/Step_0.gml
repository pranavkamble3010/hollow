if(global.archer_health<=0)
{
	instance_destroy(all);
	room_goto(rm_lose);
}
else if(global.saber_health<=0)
{
	instance_destroy(all);
	room_goto(rm_win);
}