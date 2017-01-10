//Check collisions for walls
if (place_meeting(x + hspeed, y + vspeed, obj_border)) {
  vspeed *= -1;
}

if (place_meeting(x + hspeed, y + vspeed, obj_cpu_paddle)) {
  hspeed *= -1;
}

if (place_meeting(x + hspeed, y + vspeed, obj_player_paddle)) {
  hspeed *= -1;
}
