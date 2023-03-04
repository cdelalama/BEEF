/// @description Insert description here
// You can write your code in this editor

randomize()
//If shuffling is triggered, pick a random type of text
if var_trigger=1 and
(
global.var_win_selected_r=0 or 
global.var_mid1_selected_r=0 or
global.var_mid2_selected_r=0 or
global.var_loose1_selected_r=0 or
global.var_loose2_selected_r=0
)
{
var_type=irandom(4)
}
//If shuffling is triggered again, erase all options and choose one at random
if global.var_retrigger=1
{
global.var_win_selected_r=0
global.var_mid1_selected_r=0
global.var_mid2_selected_r=0
global.var_loose1_selected_r=0
global.var_loose2_selected_r=0
global.var_attack_high_rival=0
global.var_attack_mid_rival=0
global.var_attack_fail_rival=0
var_trigger=1
var_type=irandom(4)
}

//Check if the option selected is free, and if not, repeat process until one is found
if global.var_retrigger=0
{
//Option 0 selected and empty
if var_type=0 and global.var_win_selected_r=0
{
	var_trigger=0
	global.var_win_selected_r=1
	var_type=0
	var_text=global.var_win_r
}
//Option 1 selected and empty
if var_type=1 and global.var_mid1_selected_r=0
{
	var_trigger=0
	global.var_mid1_selected_r=1
	var_type=1
	var_text=global.var_mid1_r
}
//Option 2 selected and empty
if var_type=2 and global.var_mid2_selected_r=0
{
	var_trigger=0
	global.var_mid2_selected_r=1
	var_type=2
	var_text=global.var_mid2_r
}
//Option 3 selected and empty
if var_type=3 and global.var_loose1_selected_r=0
{
	var_trigger=0
	global.var_loose1_selected_r=1
	var_type=3
	var_text=global.var_loose1_r
}
//Option 4 selected and empty
if var_type=4 and global.var_loose2_selected_r=0
{
	var_trigger=0
	global.var_loose2_selected_r=1
	var_type=4
	var_text=global.var_loose2_r
}

}

if global.var_state<>2
	{
	//Set color to "Used" mode
	var_color=c_black
	var_hover=3
	}
	
if global.var_state=1{var_state_counter+=1}

if var_state_counter>=50 {global.var_state=2;var_state_counter=0;draw_set_alpha(1)}

//Decide damage and activate player's turn
if global.var_state=2
{
//Set color to "Used" mode	
var_color=c_white
var_hover=1
//If the best option is selected, do maximum damage to the player
if var_text=global.var_win_r
	{
	global.var_attack_high_rival=1
	}
//If one of the two mid options is selected, do mid damage to the player
if var_text=global.var_mid1_r or var_text=global.var_mid2_r
	{
	global.var_attack_mid_rival=1
	}
//If one of the two bad options is selected, the rival damages himself
if var_text=global.var_loose1_r or var_text=global.var_loose2_r
	{
	global.var_attack_fail_rival=1
	}

}

//Use real text each step

if global.var_loose1_selected_r=1{var_text=global.var_loose1_r}
if global.var_loose2_selected_r=1{var_text=global.var_loose2_r}

if global.var_mid1_selected_r=1{var_text=global.var_mid1_r}
if global.var_mid2_selected_r=1{var_text=global.var_mid2_r}

if global.var_win_selected_r=1{var_text=global.var_win_r}
