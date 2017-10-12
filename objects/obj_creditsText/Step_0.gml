/// @description control game loop

if (keyboard_check_pressed(vk_enter)) {
	instance_destroy();
	scr_newGame();
}