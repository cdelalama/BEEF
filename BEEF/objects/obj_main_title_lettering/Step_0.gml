
var_counter+=0.005

if var_counter>2.75 {var_alpha+=0.01}

if var_counter>10 {instance_create_layer(x,y,"Filter_Out",obj_main_filter_out)}

if keyboard_check(vk_escape){game_end()}