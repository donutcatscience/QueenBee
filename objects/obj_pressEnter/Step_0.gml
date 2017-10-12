/// @description loads new game assets

if (keyboard_check_pressed(vk_enter) || mouse_check_button(mb_left)) {
	instance_destroy(obj_credits);
	instance_destroy(obj_theHorde);
	audio_stop_sound(mus_intro);
	instance_destroy();
	scr_activeGame();
}