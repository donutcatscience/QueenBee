/// @description starts game

//game over taunt
taunt = false;
win = false;

//start rain sounds loop
audio_play_sound(mus_rain,1,true);
audio_play_sound(mus_rainSiren,1,true);

//randomize seed
randomize();