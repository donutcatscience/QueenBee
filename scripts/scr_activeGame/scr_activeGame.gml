// sets up active game

//load queen bee
instance_activate_layer("Instances");
instance_create_layer(50,110,"Instances",obj_queenBee);

//load enemy bee spawner
instance_create_layer(1,1,"Instances",obj_enemyBeeSpawner);

