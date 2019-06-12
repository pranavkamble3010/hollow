/// @description
with(other)
{
	hlth -=global.archer_attack;
	flash = 3;
	show_debug_message("enemy hit");
}
instance_destroy();
