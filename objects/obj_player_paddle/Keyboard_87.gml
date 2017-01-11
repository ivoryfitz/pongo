///@description Move player paddle up
y -= paddleSpeed;
y = clamp(y, 0 + sprite_height / 2, room_height - sprite_height / 2);