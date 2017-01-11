var xLoc, yLoc;
yLoc = room_height / 2;

if (winner == 1) {
  xLoc = room_width - room_width / 4;
}

if (winner == -1) {
  xLoc = room_width / 4;
}

if (winner != 0) {
  global.pause = true;
  draw_set_color(c_white);
  draw_set_valign(fa_center);
  draw_set_halign(fa_center);
  draw_set_font(font_attract_start);

  draw_text(xLoc, yLoc, "WINNER!");
  
  draw_set_alpha((sin(current_time / 300) + 1) / 2);
  draw_text(room_width / 2, room_height - room_height / 5, "'Enter' to Restart");
  draw_set_alpha(1);
}