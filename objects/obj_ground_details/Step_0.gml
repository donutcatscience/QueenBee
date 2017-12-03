/// @description check location

if (x <= -64) {
	obj_background_generator.create_tile_now = true;
	instance_destroy();
}