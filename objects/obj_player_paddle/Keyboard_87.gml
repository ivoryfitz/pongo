///@description Move player paddle up

// If going to collide with the wall...
if (place_meeting(x, y - paddleSpeed, obj_border)) {
  //Close the gap so the paddle is snug against the wall if it isn't already
  var distance = distance_to_object(obj_border);
  y -= distance;
} else {
  y -= paddleSpeed;
}