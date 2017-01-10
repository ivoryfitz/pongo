/// @description Movement
if(abs(obj_ball.y - y) > paddleSpeed)
    y += sign(obj_ball.y - y) * paddleSpeed;
else
    y = obj_ball.y;