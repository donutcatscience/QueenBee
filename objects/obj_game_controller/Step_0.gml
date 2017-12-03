/// @description handles main game 

if (keyboard_check_pressed(vk_backspace)) {
	audio_stop_all();
	room_restart();
}