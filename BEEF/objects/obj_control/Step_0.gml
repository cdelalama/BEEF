/// @description Insert description here
// You can write your code in this editor

if keyboard_check_released(vk_enter)
{
	obj_options.var_text=""
	global.var_erase=1
	room_restart()
}

if global.var_retrigger=1
{
	var_buffer+=1
}

if var_buffer>=5
{
	i=i+2;
	global.var_retrigger=0
	var_buffer=0
}

if(global.GPT3_generic_insults_received){


global.var_loose1=global.GPT3_generic_insults[i]
global.var_loose2=global.GPT3_generic_insults[i+1]


}