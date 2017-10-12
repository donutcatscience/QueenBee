/// @description Scaling spawn based on stage

for (var i = 0; i < gameStage; i += 1) {
   do {
		randomBeeY = random_range(5,210); //sets random location inside room
	}
until (place_free(x, point_in_rectangle(obj_robotBee_moving.x,obj_robotBee_moving.y,x,
					randomBeeY + 15,x, randomBeeY - 15))); // loops until free space is found
		instance_create_layer(x,randomBeeY,"Instances",obj_robotBee_moving);
}
