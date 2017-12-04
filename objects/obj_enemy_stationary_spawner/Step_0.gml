/// @description Controlls Enemy Spawner

if (instance_exists(obj_queenBee)) {
	obj_enemyBeeSpawner.x = obj_queenBee.x + 500;
	if (gameStage > 8) gameStage = 4;
	if (stageDuration = (room_speed * 3)) {
		gameStage++;
		stageDuration = 0;
		alarm_set(1,1);
	}
	else stageDuration++;
}