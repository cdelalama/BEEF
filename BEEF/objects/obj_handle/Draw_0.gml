/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_lime)
draw_set_font(fnt_fff_forward)


draw_text(x,y,"Your startup is:")
draw_text(x,y+16,global.GPT3_startup_idea_name)
draw_text(x,y+32,global.GPT3_startup_idea_business_model)
draw_text(x,y+200,"Insert rival's twitter handle")
draw_text(x,y+216,global.var_handle)

	// how many pixels high would we need if we put text at a width of sprite_width
	totalHeightNeeded=string_width_ext(global.GPT3_startup_idea_explanation, 10, 200);

	// how many pixels wide would we need if we put the text at a height of sprite_height
	totalWidthNeeded=string_height_ext(global.GPT3_startup_idea_explanation, 10, 288);

	if(totalHeightNeeded<200 && 
	totalWidthNeeded<288)
		{
		draw_text_ext(x,y+48,global.GPT3_startup_idea_explanation,8,288);
		}