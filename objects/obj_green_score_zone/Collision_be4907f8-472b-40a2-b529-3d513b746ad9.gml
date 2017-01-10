/// @description Increment Blue's Score, Respawn Ball

//Increment Blue Score
cont_score_ui.blueScore++;

//Destroy Ball, Save spawn coordinates
var newX, newY;
with (other) {
  newX = spawnX;
  newY = spawnY;
  instance_destroy();
}
//Spawn New Ball
instance_create_layer(newX, newY, "Instances", obj_ball);