/// @description draw GUI

draw_set_font(fnt_UI);
draw_set_halign(fa_left);
draw_set_color(c_white);
draw_text(170,50,"Time: " + string((time/60)));
draw_text(810,50,"Score: " + string(score));