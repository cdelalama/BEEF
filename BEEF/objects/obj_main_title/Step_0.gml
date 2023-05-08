
if var_switch=0 {var_trans+=0.005}
if var_switch=1 {var_trans-=0.005}

var_frame+=0.15

if var_trans>=2{var_switch=1}

if var_switch=1 and var_trans=0 {room_goto(rm_island)}

if keyboard_check(vk_escape){game_end()}