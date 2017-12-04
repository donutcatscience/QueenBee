/// @description starts game

draw_set_font(fnt_credits);

//start rain sounds loop
audio_play_sound(mus_rain,2,true);
audio_play_sound(mus_rainSiren,2,true);

//randomize seed
randomize();

///load new game assets
scr_newGame();