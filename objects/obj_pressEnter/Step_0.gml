/// @description loads new game assets

if (keyboard_check_pressed(vk_enter) || mouse_check_button(mb_left)) {
	scr_activeGame();
	instance_destroy(obj_credits);
	instance_destroy();
}