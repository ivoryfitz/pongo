if(global.pause) speed = 0;
else speed = clamp(ballSpd + (paddleHits * paddleHitsSpdMultiplier), ballSpd, ballSpdMax);
