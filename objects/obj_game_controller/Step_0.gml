/// @description Game Controllers

if keyboard_check(ord("R")) game_restart();

if (instance_exists(obj_queenBee)) obj_enemyBeeSpawner.x = obj_queenBee.x + 500;

if (!instance_exists(obj_queenBee) && (taunt = false)) {
	audio_play_sound(choose(
	sfx_eliminated,sfx_failure,sfx_gameOver),1,false);
	taunt = true;
}

if (!instance_exists(obj_queenBee) && (win = true)) {
	audio_play_sound(sfx_wellDone,1,false);
	win = false;
}