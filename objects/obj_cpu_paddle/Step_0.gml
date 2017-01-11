/// @description Movement
if(abs(obj_ball.y - y) > paddleSpeed) y += sign(obj_ball.y - y) * paddleSpeed;
else y = obj_ball.y;

y = clamp(y, 0 + sprite_height / 2, room_height - sprite_height / 2);
    