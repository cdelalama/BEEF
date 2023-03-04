
randomize()

//If shuffling is triggered and there is at least one option not selected, pick a random one
if var_trigger=1 and global.var_turn_count<5 and
(
global.var_win_selected=0 or 
global.var_mid1_selected=0 or
global.var_mid2_selected=0 or
global.var_loose1_selected=0 or
global.var_loose2_selected=0
)
{
var_type=irandom(4)
}

//If shuffling is triggered again, erase all options and choose one at random
if global.var_retrigger=1
{
global.var_win_selected=0
global.var_mid1_selected=0
global.var_mid2_selected=0
global.var_loose1_selected=0
global.var_loose2_selected=0
global.var_attack_high=0
global.var_attack_mid=0
global.var_attack_fail=0
var_trigger=1
var_selected=0
var_color=c_white
var_hover=0
var_type=irandom(4)
var_text=""
}

//Check if the option selected is free, and if not, repeat process until one is found
if global.var_retrigger=0
{
	global.var_chosen=0
//Option 0 selected and empty
if var_type=0 and global.var_win_selected=0
{
	var_trigger=0
	global.var_win_selected=1
	var_type=0
	var_text=global.var_win
	
	//var_text=global.var_win
	
	
}
//Option 1 selected and empty
if var_type=1 and global.var_mid1_selected=0
{
	var_trigger=0
	global.var_mid1_selected=1
	var_type=1
	var_text=global.var_mid1
}
//Option 2 selected and empty
if var_type=2 and global.var_mid2_selected=0
{
	var_trigger=0
	global.var_mid2_selected=1
	var_type=2
	var_text=global.var_mid2
}
//Option 3 selected and empty
if var_type=3 and global.var_loose1_selected=0
{
	var_trigger=0
	global.var_loose1_selected=1
	var_type=3
	var_text=global.var_loose1
}
//Option 4 selected and empty
if var_type=4 and global.var_loose2_selected=0
{
	var_trigger=0
	global.var_loose2_selected=1
	var_type=4
	var_text=global.var_loose2
}

}

if global.var_attack_high=1 or global.var_attack_mid=1 or global.var_attack_fail=1
{global.var_chosen=1}

if global.var_win_selected=1 and var_type=0 and  global.var_win <> "" {var_text= global.var_win}
if global.var_mid1_selected=1 and var_type=1 and global.var_mid1 <> "" {var_text=global.var_mid1}
if global.var_mid2_selected=1 and var_type=2 and global.var_mid2 <> "" {var_text=global.var_mid2}
if global.var_loose1_selected=1 and var_type=3 and global.var_loose1 <> "" {var_text=global.var_loose1}
if global.var_loose2_selected=1 and var_type=4 and global.var_loose2 <> "" {var_text=global.var_loose2}