//add small foilage under trees
//choose location
do {
	var xx = irandom_range(-50,50) + previous_tree_x;
	var yy = irandom(10) + previous_tree_y;
}
until (!place_meeting(xx,yy,obj_ground_details));
var finished_sprite = instance_create_layer(xx,yy,"BackgroundGen",obj_grass);
