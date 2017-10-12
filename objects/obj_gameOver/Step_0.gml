/// @description handle game over and restart


if (keyboard_check_pressed(vk_enter) || mouse_check_button(mb_left)) {
	instance_destroy(obj_gameOverText);
	instance_destroy(obj_theHorde);
	instance_destroy();
	scr_activeGame();
}