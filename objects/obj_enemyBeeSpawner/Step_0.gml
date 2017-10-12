/// @description Controlls Enemy Spawner

if (instance_exists(obj_queenBee)) {
	if (gameStage > 3) gameStage = 1;
	if (stageDuration = (room_speed * 4.5)) {
		gameStage++;
		stageDuration = 0;
		alarm_set(1,1);
	}
	else stageDuration++;
}