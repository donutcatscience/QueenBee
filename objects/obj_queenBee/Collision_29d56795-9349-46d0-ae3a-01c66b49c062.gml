/// @description shot down

instance_create_layer((room_width/2),(216/2),"UI",obj_gameOver);
audio_play_sound(choose(sfx_eliminated,sfx_failure,sfx_gameOver),40,false);
instance_destroy(obj_robotBee_moving);
instance_destroy(obj_enemyBeeSpawner);
instance_destroy(other);
instance_destroy(self);
audio_play_sound(snd_player_death,1,false);