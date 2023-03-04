/// @description Insert description here
// You can write your code in this editor

if keyboard_check_released(vk_enter)
{
	game_restart()
}

if global.var_retrigger=1
{
	var_buffer+=1
}

if var_buffer>=5 and  global.var_turn_count<=5
{
	i=i+4;
	j=j+1;
	global.var_retrigger=0
	var_buffer=0
	global.var_turn_count+=1
}

if(global.GPT3_generic_insults_received){


global.var_loose1=global.GPT3_generic_insults[i]
global.var_loose2=global.GPT3_generic_insults[i+1]
global.var_loose1_r=global.GPT3_generic_insults[i+2]
global.var_loose2_r=global.GPT3_generic_insults[i+3]

}

if(global.GPT3_startup_insults_received){


global.var_mid1=global.GPT3_startup_insults[i]
global.var_mid2=global.GPT3_startup_insults[i+1]
global.var_mid1_r=global.GPT3_startup_insults[i+2]
global.var_mid2_r=global.GPT3_startup_insults[i+3]

}

if (global.twitter_bio_insults_received){
	
global.var_win=global.twitter_bio_insults[j]

}

if (global.twitter_bio_insults_received){
	
global.var_win=global.twitter_bio_insults[j]

}

if (global.GPT3_startup_idea_insults_received){
	
show_debug_message("XXX--- STARTUP IDEA INSULTS RECEIVED ---XXX");
show_debug_message(global.GPT3_startup_idea_insults)
show_debug_message("J:")
show_debug_message(j)
global.var_win_r=global.GPT3_startup_idea_insults[j]

}

if i > 0{

global.var_mid1=global.GPT3_startup_insults[i]
global.var_mid2=global.GPT3_startup_insults[i+1]
global.var_mid1_r=global.GPT3_startup_insults[i+2]
global.var_mid2_r=global.GPT3_startup_insults[i+3]
}