/// @description Controlls Enemy Spawner

if (instance_exists(obj_queenBee)) {
	obj_enemyBeeSpawner.x = obj_queenBee.x + 500;
	if (gameStage > 4) gameStage = 1;
	if (stageDuration = (room_speed * 4.5)) {
		gameStage++;
		stageDuration = 0;
		alarm_set(1,1);
	}
	else stageDuration++;
}