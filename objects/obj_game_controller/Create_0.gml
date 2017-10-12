/// @description starts game

//game over taunt
taunt = false;
win = false;

//start rain sounds loop
audio_play_sound(mus_rain,45,true);
audio_play_sound(mus_rainSiren,45,true);

//randomize seed
randomize();

//load new game assets
scr_newGame();