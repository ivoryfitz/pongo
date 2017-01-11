direction = choose(random_range(-60, 60), random_range(120, 240));
ballSpd = 5;
speed = ballSpd;
ballSpdMax = 15;
spawnX = x;
spawnY = y;
paddleHits = 0;
paddleHitsToMaxSpd = floor(random_range(20, 40));
paddleHitsSpdMultiplier = (ballSpdMax - ballSpd) / paddleHitsToMaxSpd;
lastInstanceHit = noone;
baseDir = 0;
if (hspeed < 0) {
  baseDir = 180;
}
