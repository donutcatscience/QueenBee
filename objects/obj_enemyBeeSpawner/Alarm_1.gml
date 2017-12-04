/// @description Scaling spawn based on stage

for (var i = 0; i < gameStage; i += 1) {
   do {
		randomBeeY = random_range(5,210); //sets random location inside room
	}
until (place_free(x,y)); // loops until free space is found
		instance_create_layer(x,randomBeeY,"Instances",obj_robotBee_moving);
}
