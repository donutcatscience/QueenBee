//destroy off left side of screen

if (x <= -64) {
	instance_destroy();
}

if (instance_exists(obj_queenBee)) {
	var random_shoot = irandom_range(375,384);
	if (x > obj_queenBee.x) && (x < random_shoot) {
		if (can_shoot = true) {
			var fire_angle = point_direction(x,y,obj_queenBee.x,obj_queenBee.y);
			var laser = instance_create_layer(x,y,"Instances",obj_robotBee_lazers);
			laser.direction = fire_angle;
			laser.image_angle = fire_angle;
			audio_play_sound(sfx_lazer,2,false);
			can_shoot = false;
			alarm_set(0,irandom_range(60,90));
		}
	}
}