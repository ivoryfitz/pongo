/// @description Draw Scores to Screen

draw_set_font(font_score);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

//Draw Green's Score in top left
draw_text(50, 20, string(greenScore));

//Draw Blue's Score in top right
draw_text(room_width - 50, 20, string(blueScore));