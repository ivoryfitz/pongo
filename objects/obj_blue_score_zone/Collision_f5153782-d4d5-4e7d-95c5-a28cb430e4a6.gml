/// @description Increment Green's Score, Respawn Ball

//Increment Green Score
cont_score_ui.greenScore++;

//Destroy Ball, Save spawn coordinates
var newX, newY;
with (other) {
  newX = spawnX;
  newY = spawnY;
  instance_destroy();
}
//Spawn New Ball
instance_create_layer(newX, newY, "Instances", obj_ball);