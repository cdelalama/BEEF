
//Select text's color needed
draw_set_color(var_color)
draw_set_font(fnt_fff_forward)

//Draw text and box with the color needed
draw_sprite_ext(spr_back,var_hover,x,y,1,1,0,c_white,1)

if global.var_erase=0 and global.var_turn_count<5 and global.var_position>0 and global.var_position<5
	{
	// how many pixels high would we need if we put text at a width of sprite_width
	totalHeightNeeded=string_width_ext(var_text, 4, 200);

	// how many pixels wide would we need if we put the text at a height of sprite_height
	totalWidthNeeded=string_height_ext(var_text, 10, 288);

	if(totalHeightNeeded<200 && 
	totalWidthNeeded<288)
		{
		draw_text_ext(x,y,var_text,8,288);
		}
	}

//draw_text(x+128,y,var_type)