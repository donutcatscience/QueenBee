/// @description Create Queen

//initialize variables
image_xscale = .5;
image_yscale = .5;

queenNormalSpeed = 3;
queenBoostSpeed = 3;
queenSpeed = 0;

diagonalPenalty = 1.2;

moveX = 0;
moveY = 0;

//play her sound
audio_play_sound(sfx_queenBee,1,true);
audio_play_sound(sfx_begin,45,false);