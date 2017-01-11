//Check collisions for walls
var collisionPointX = x + hspeed;
var collisionPointY = y + vspeed;

//Ball is moving to the left, we're looking to bounce off the player paddle
if (hspeed < 0) {
  //Bounce off walls in 45's
  if (place_meeting(collisionPointX, collisionPointY, obj_border)) {
    if (collisionPointY < room_height / 2) direction = 180 + 45;
    else direction = 180 - 45;
    direction += random_range(-3, 3);
  }
  
  //Bounce off paddle in 45's
  if (place_meeting(collisionPointX, collisionPointY, obj_player_paddle)) {
    paddleHits++;
    if (collisionPointY < obj_player_paddle.y) direction = 45;
    if (
      collisionPointY <= obj_player_paddle.y + 5 and
      collisionPointY >= obj_player_paddle.y - 5 
    ) direction = 0;
    if (collisionPointY > obj_player_paddle.y) direction = -45;
    direction += random_range(-3, 3);
  }
}

//Ball is moving to the right, we're looking to bounce off the cpu paddle
if (hspeed > 0) {
  //Bounce off walls in 45's
  if (place_meeting(collisionPointX, collisionPointY, obj_border)) {
    if (collisionPointY < room_height / 2) direction = -45;
    else direction = 45;
    direction += random_range(-3, 3);
  }
  
  //Bounce off paddle in 45's
  if (place_meeting(collisionPointX, collisionPointY, obj_cpu_paddle)) {
    paddleHits++;
    if (collisionPointY < obj_cpu_paddle.y) direction = 180 - 45;
    if (
      collisionPointY <= obj_cpu_paddle.y + 5 and
      collisionPointY >= obj_cpu_paddle.y - 5 
    ) direction = 180;
    if (collisionPointY > obj_cpu_paddle.y) direction = 180 + 45;
    direction += random_range(-3, 3);
  }  
}


speed = clamp(ballSpd + (paddleHits * paddleHitsSpdMultiplier), ballSpd, ballSpdMax);
