
//Select text's color needed
if (obj_fghtr.x>150 and obj_fghtr.x<200)
{
if global.var_state=2
{
draw_set_color(var_color)
draw_set_font(fnt_fff_forward)

//Draw text and box with the color needed
//draw_sprite_ext(spr_back,var_hover,x,y,1,1,0,c_white,1)

	// how many pixels high would we need if we put text at a width of sprite_width
	totalHeightNeeded=string_width_ext(var_text, 4, 200);

	// how many pixels wide would we need if we put the text at a height of sprite_height
	totalWidthNeeded=string_height_ext(var_text, 10, 288);

	if(totalHeightNeeded<200 && 
	totalWidthNeeded<288) and
	(obj_fghtr.var_sword_y_rival<180 or obj_fghtr.var_sword_y<180)
		{
		draw_set_halign(fa_right)
		draw_set_color(c_black)
		draw_text_ext(obj_fghtr.x+20,y,var_text,8,288);
		draw_set_color(c_fuchsia)
		draw_text_ext(obj_fghtr.x+21,y-1,var_text,8,288);
		}
}
}
//draw_text(x+128,y,var_type)

if (obj_fghtr.x<=150 or obj_fghtr.x>=200){
	//draw_set_halign(fa_right)
	draw_set_color(c_yellow)
	if global.var_position<=2 {draw_text_ext(x,y,"You won! Press Enter to continue",8,288)}
	if global.var_position>2 {draw_text_ext(x,y,"You loose! Press F5 to play again",8,288)}
	}