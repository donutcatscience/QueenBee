//spawns new ground detail objects

if (create_tile_now = true) {	
	//choose location
	do {
		var xx = irandom(35) + previous_tree_x;
		var yy = irandom_range(140,200);
	}
	until (!place_meeting(xx,yy,obj_ground_details));
	var finished_sprite = instance_create_layer(xx,yy,"Grass",obj_ground_details);
	previous_tree_x = finished_sprite.x;
	previous_tree_y = finished_sprite.y;
	//make grass
	var grass = choose(0,1);
	for (var ii = 0;ii<=grass;ii++){
		scr_background_detail_grass_maker();
	}
	//make bushes
		var bush = choose(0,1);
	for (var ii = 0;ii<=bush;ii++){
		scr_background_detail_bush_maker();
	}
	
	create_tile_now = false;
}