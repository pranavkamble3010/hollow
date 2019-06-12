if(room == rm_forest)
{
	room_goto(rm_mountains);
}
if(room == rm_mountains)
{
	instance_destroy(obj_camera);
	room_goto(rm_boss_1);
}