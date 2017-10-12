/// @description Initialize bee spawner

//initialize variables
randomBeeY = 0;
stageDuration = 0;
gameStage = 1;

safeSpace = 0;

//set short alarm to keep Min enemty on screen
alarm_set(0,(room_speed * random_range(0.5, 2)));
