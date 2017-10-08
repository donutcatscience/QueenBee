/// @description draw

surface_set_target(nightCycleSurf); //set surface to draw on
draw_clear(c_black); //draws surface black
surface_reset_target(); //resets surface so other draw functions are not effected
//draws surface with current alpha depending on lightning
draw_surface_ext(nightCycleSurf,0,0,1,1,0,c_white,alpha); 
