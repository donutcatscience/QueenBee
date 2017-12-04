/// @description handle game over and restart


if (keyboard_check_pressed(vk_enter)) {
	instance_destroy(obj_gameOverText);
	instance_destroy(obj_theHorde);
	instance_destroy();
	audio_stop_all();
	scr_activeGame();
}