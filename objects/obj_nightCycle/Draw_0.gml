/// @description draw

surface_set_target(nightCycleSurf);
draw_clear(c_black);
surface_reset_target();

draw_surface_ext(nightCycleSurf,0,0,1,1,0,c_white,alpha);
