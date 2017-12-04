//controlls shooting player shoot

if (instance_exists(obj_queenBee)) {
	if (can_shoot = true) {
		//var length = point_distance(0,0,shoot_x,shoot_y);
		//var shoot_direction = point_direction(0,0,shoot_x,shoot_y);
		var fire_angle = point_direction(x,y,mouse_x,mouse_y);
		//var xx = shoot_x + lengthdir_x(length,shoot_direction+fire_angle);
		//var yy = shoot_y + lengthdir_x(length,shoot_direction+fire_angle);
		var laser = instance_create_layer(x+2,y+1,"Instances",obj_bee_bullets);
		laser.direction = fire_angle;
		laser.image_angle = fire_angle;
		audio_play_sound(sfx_bullet,2,false);
		can_shoot = false;
		alarm_set(0,8);
	}
}
