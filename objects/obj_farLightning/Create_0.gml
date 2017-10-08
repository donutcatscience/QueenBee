/// @description sets delay for lightning animation to play

//turn off animation for delay between strikes
image_speed = 0;

//choose random lightning
sprite_index = choose(spr_farLightning01,spr_farLightning02);

//change the scale of lightning
lightScale = random_range(.1,1);
image_xscale = lightScale;
image_yscale = lightScale;

//set time for animation to start and delete object
alarm_set(0,random_range(60,120));
