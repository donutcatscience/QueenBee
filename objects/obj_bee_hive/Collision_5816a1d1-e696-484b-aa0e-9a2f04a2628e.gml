/// @description 

score += 25;
instance_create_layer(x,y,"Score",obj_bonus_points_hive);
audio_play_sound(sfx_hive_pickup,3,false);
instance_destroy(self);