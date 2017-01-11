/// @description Movement
if(global.pause) exit;
var spd = random_range(paddleSpeed * 0.4, paddleSpeed * 0.8);
if(abs(obj_ball.y - y) > spd) y += sign(obj_ball.y - y) * spd;
else y = obj_ball.y;
    