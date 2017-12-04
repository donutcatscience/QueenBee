/// @description handel player input

//check for player movement
inputLeft = max(keyboard_check(ord("A")),keyboard_check(vk_left),0);
inputRight = max(keyboard_check(ord("D")),keyboard_check(vk_right),0);
inputUp = max(keyboard_check(ord("W")),keyboard_check(vk_up),0);
inputDown = max(keyboard_check(ord("S")),keyboard_check(vk_down),0);

//boost
inputSpeedBoost = max(keyboard_check(vk_shift),0);

//check mouse click for bee shooting
inputShoot = max(mouse_check_button(mb_left),0);
if (inputShoot) scr_player_shoot();


//lightning attack

//Queen Bee Boost
if (inputSpeedBoost) {
	queenSpeed = queenBoostSpeed;
}
else queenSpeed = queenNormalSpeed;

//reset main movement variables every step
moveX = 0;
moveY = 0;

//ensures there are no issues with simultatnious keypresses for up down, left right
moveX = (inputRight - inputLeft) * queenSpeed;
moveY = (inputDown - inputUp) * queenSpeed;

//test to see if player is moving diagonal and incures a penalty to prevent explotation
if ((abs(moveX) > 0) && ((abs(moveY) > 0))) {
	queenSpeed = queenSpeed / diagonalPenalty;
	moveX = (inputRight - inputLeft) * queenSpeed;
	moveY = (inputDown - inputUp) * queenSpeed;
}

//horizontal collision check
if (moveX != 0){
	if (place_meeting((x + moveX), y, obj_playerWall)){
		repeat (abs(moveX)){
			if (!place_meeting((x +sign(moveX)),y, obj_playerWall)){
				x += sign(moveX);
			}
			else {
				break;
			}
		}
		moveX = 0;
	}
}


//verticle collision check
if (moveY != 0){
	if (place_meeting(x,(y + moveY), obj_playerWall)){
		repeat (abs(moveY)){
			if (!place_meeting(x,(y +sign(moveY)), obj_playerWall)){
				y += sign(moveY);
			}
			else {
				break;
			}
		}
		moveY = 0;
	}
}



//moves queen
x += moveX;
y += moveY;
