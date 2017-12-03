//add small foilage under trees
//choose location
do {
	var xx = irandom_range(-75,75) + previous_tree_x;
	var yy = irandom_range(-20,-10) + previous_tree_y;
	if (yy < 140) yy = 140;
}
until (!place_meeting(xx,yy,obj_ground_details));
var finished_sprite = instance_create_layer(xx,yy,"Bushes",obj_bush);
