/// @description destroy queen bee on collision

instance_create_layer((obj_camera.x),(216/2),"UI",obj_gameOver);
audio_play_sound(choose(sfx_eliminated,sfx_failure,sfx_gameOver),40,false);
instance_destroy(obj_robotBee_moving);
instance_destroy(obj_enemyBeeSpawner);
instance_destroy();