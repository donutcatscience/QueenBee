/// @description play lightning animation



//get current location of queen bee and add random left and right to it 
if (instance_exists(obj_queenBee)){
	for (var i=0; i <= choose(2,3,3,4,4); ++i) {
		var queenX = (random_range(-150,150) + obj_queenBee.x); 
		instance_create_layer(queenX,1,"Lightning",obj_farLightning);
	}
}
else {
	for (var i=0; i <= choose(2,3,3,4,4); ++i) {
		var queenX = (random_range(-150,150) + (room_width / 2)); 
		instance_create_layer(queenX,1,"Lightning",obj_farLightning);
	}	
}


//reset lightning alarm
alarm_set(0,random_range(90,180));
