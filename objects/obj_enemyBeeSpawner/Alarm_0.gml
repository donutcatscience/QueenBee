/// @description Keep 1 enemy on screen

//for loop so that there is almost always one enemy
do {
	randomBeeY = random_range(5,210); //sets random location inside room
	}
until (place_free(x,randomBeeY)); // loops until free space is found
		instance_create_layer(x,randomBeeY,"Instances",obj_robotBee_moving);

//set short alarm to keep 1 missile spawning often
alarm_set(0,(room_speed * random_range(0.5, 2)));