/// @description Increment Green's Score, Respawn Ball
if (room != rm_attract) {
  //Increment Green Score
  cont_score_ui.greenScore++;

  if(cont_score_ui.greenScore == cont_score_ui.winningScore) {
    cont_gameover_ui.winner = -1;
    cont_gameover_ui.alarm[0] = 10 * game_get_speed(gamespeed_fps);
  }
}

//Destroy Ball, Save spawn coordinates
var newX, newY;
with (other) {
  newX = spawnX;
  newY = spawnY;
  instance_destroy();
}
//Spawn New Ball
instance_create_layer(newX, newY, "Instances", obj_ball);