/// @description Game Controllers

//controls game restating
if keyboard_check(ord("R")) game_restart();

//ensures queen bee is on screen otherwise game over.
if (!instance_exists(obj_queenBee)) {
	//var cam = view_get_camera(0);
	//var cw = camera_get_view_width(cam);
	//var ch = camera_get_view_height(cam);
	//instance_create_layer((cw/2),(ch/2),"UI",obj_gameOver);
	
}
//if queen bee on screen, moves the spawner across the room
else if (instance_exists(obj_queenBee) && (instance_exists(obj_enemyBeeSpawner))) {
	obj_enemyBeeSpawner.x = obj_queenBee.x + 500;
}



if (!instance_exists(obj_queenBee) && (taunt = false)) {
	audio_play_sound(choose(
	sfx_eliminated,sfx_failure,sfx_gameOver),40,false);
	taunt = true;
}

if (!instance_exists(obj_queenBee) && (win = true)) {
	audio_play_sound(sfx_wellDone,50,false);
	win = false;
}          