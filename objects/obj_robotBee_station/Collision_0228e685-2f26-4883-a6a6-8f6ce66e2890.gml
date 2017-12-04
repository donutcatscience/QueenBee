/// @description handle colission

//adjust score
instance_destroy(other);
instance_destroy(self);
instance_create_layer(x,y,"Instances",obj_explosion01);
instance_create_layer(x,y,"Score",obj_bonus_points);
instance_create_layer(x,y,"Hives",obj_bee_hive);
score += 10;
audio_play_sound(sfx_enemyDeath,3,false);


