/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_lime)
draw_set_font(fnt_fff_forward)

draw_text(x,y,"Welcome to B.E.E.F")
draw_text(x,y+16,"Bufficorn's Epic Entrepreneurs Fight")
draw_text(x,y+48,"You are an entrepeneur. Your startup is:")
draw_text(x,y+64,global.GPT3_startup_idea_name)
draw_text(x,y+80,global.GPT3_startup_idea_business_model)
draw_text(x,y+160,"Insert rival's twitter handle")
draw_text(x,y+176,global.var_handle)

	// how many pixels high would we need if we put text at a width of sprite_width
	totalHeightNeeded=string_width_ext(global.GPT3_startup_idea_explanation, 10, 200);

	// how many pixels wide would we need if we put the text at a height of sprite_height
	totalWidthNeeded=string_height_ext(global.GPT3_startup_idea_explanation, 10, 288);

	if(totalHeightNeeded<200 && 
	totalWidthNeeded<288)
		{
		draw_text_ext(x,y+96,global.GPT3_startup_idea_explanation,8,288);
		}