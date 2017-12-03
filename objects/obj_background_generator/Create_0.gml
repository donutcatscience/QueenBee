/// @description Controls creation of background trees and plants

create_tile_now = false;
previous_tree_x = 448;
previous_tree_y = 216;
current_sprite_index = 0;

//spawn initial details
instance_create_layer(64,160,"BackgroundGen",obj_ground_details);
instance_create_layer(304,192,"BackgroundGen",obj_ground_details);
instance_create_layer(128,208,"BackgroundGen",obj_ground_details);
instance_create_layer(240,176,"BackgroundGen",obj_ground_details);
instance_create_layer(368,216,"BackgroundGen",obj_ground_details);
instance_create_layer(448,160,"BackgroundGen",obj_ground_details);
