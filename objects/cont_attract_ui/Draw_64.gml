draw_set_color(c_white);
draw_set_valign(fa_center);
draw_set_halign(fa_center);
draw_set_font(font_attract_title);
draw_text(room_width / 2, room_height / 5, "PONG");


draw_set_font(font_attract_start);
draw_set_alpha((sin(current_time / 300) + 1) / 2);
draw_text(room_width / 2, room_height - room_height / 5, "'Enter' To Start");
draw_set_alpha(1);