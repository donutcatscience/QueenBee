/// @description Initialize variables for room

level_speed = -3;

audio_play_sound(mus_game_song,1,true);
instance_create_layer(64,96,"Instances",obj_queenBee);

//randomize seed
randomize();