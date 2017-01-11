if (other != lastInstanceHit) {
  paddleHits++;
  
  lastInstanceHit = other;
  
  if (baseDir == 0) baseDir = 180;
  else baseDir = 0;
  
  if (y < other.y) direction = baseDir + 45 * sign(hspeed);
  if (
    y <= other.y + other.sweetSpot / 2 and
    y >= other.y - other.sweetSpot / 2
  ) direction = baseDir;
  if (y > other.y) direction = baseDir - 45 * sign(hspeed);
  
  direction += random_range(-10, 10);
}