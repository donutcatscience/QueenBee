/// @description handel player input

//check for player movement
inputLeft = max(keyboard_check(ord("A")),0);
inputRight = max(keyboard_check(ord("D")),0);
inputUp = max(keyboard_check(ord("W")),0);
inputDown = max(keyboard_check(ord("S")),0);

//boost
inputSpeedBoost = max(keyboard_check(vk_shift),0);

//check mouse click for lightning
inputAttack = max(mouse_check_button(mb_left),0);

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



//verticle collision check




//moves queen
x += moveX;
y += moveY;
