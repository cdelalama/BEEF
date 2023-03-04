
//Display box and text in "Selected" mode
if global.var_state=0 and global.var_chosen=0 and global.var_turn_count<=5
{
global.var_chosen=1
var_color=c_black
var_hover=2
var_selected=1
if var_text= global.var_win {global.var_attack_high=1}
if var_text=global.var_mid1 or var_text=global.var_mid2 {global.var_attack_mid=1}
if var_text=global.var_loose1 or var_text=global.var_loose2 {global.var_attack_fail=1}
}