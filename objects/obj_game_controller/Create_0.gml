/// @description starts game

draw_set_font(fnt_credits);

//start rain sounds loop
audio_play_sound(mus_rain,45,true);
audio_play_sound(mus_rainSiren,45,true);
audio_play_sound(mus_intro,1,true);

//randomize seed
randomize();

//load new game assets
scr_newGame();