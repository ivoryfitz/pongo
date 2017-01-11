if (other != lastInstanceHit) {
  lastInstanceHit = other;
  if (y < room_height / 2) direction = baseDir - 45 * sign(hspeed);
  else direction = baseDir + 45 * sign(hspeed);
  direction += random_range(-10, 10);
}
