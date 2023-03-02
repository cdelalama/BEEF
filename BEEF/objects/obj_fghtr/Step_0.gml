
//Randomize sword pose during Attack
randomize()

//While player is not defeated, use "Regular" sprites (With a "1" in their name)
if var_pose<=4 
	{
	var_head_pose=var_pose;var_sword_pose=var_pose
	var_sword=spr_fghtr_sword_1_a;var_head=spr_fghtr_head_1_a
	}

//If player is defeated, change head and sword sprite
if var_pose=5 {var_sword=spr_fghtr_sword_3_a;var_head=spr_fghtr_head_2_a;var_head_pose=1}

//X target position for each pose
if var_pos=5 {var_posx=150}
if var_pos=4 {var_posx=160}
if var_pos=3 {var_posx=170}
if var_pos=2 {var_posx=180}
if var_pos=1 {var_posx=190}
if var_pos=0 {var_posx=200}

if var_pose>0 and var_pose<5
{
var_torso=var_pose
var_torso_rival=var_pose_rival
//Player Attack failed: Move one "Pose" back
if global.var_attack_fail=1 and var_attack=0 {var_attack=1;if var_pos<=4{var_pos+=1;var_pose_final+=1;var_turn=1}}
//Player Mid Attack: Move one "Pose" forward
if global.var_attack_mid=1 and var_attack=0 {var_attack=1;if var_pos>=1{var_pos-=1;var_pose_final-=1;var_turn=1}}
//Player Strong Attack: Move two "Poses" forward
if global.var_attack_high=1 and var_attack=0 {var_attack=1;if var_pos>=2{var_pos-=1;var_pose_final-=1;var_turn=1};if var_pos>=1{var_pos-=1;var_pose_final-=1}}

//Rival Attack failed: Move one "Pose" back
if global.var_attack_fail_rival=1 and var_attack=2 {var_attack=1;if var_pos>=1{var_pos-=1;var_pose_final-=1;var_turn=0}}
//Rival Mid Attack: Move one "Pose" forward
if global.var_attack_mid_rival=1 and var_attack=2 {var_attack=1;if var_pos<=4{var_pos+=1;var_pose_final+=1;var_turn=0}}
//Rival Strong Attack: Move two "Poses" forward
if global.var_attack_high_rival=1 and var_attack=2 {var_attack=1;if var_pos<=4{var_pos+=1;var_pose_final+=1;var_turn=0};if var_pos<=3{var_pos+=1;var_pose_final+=1}}
}

//Attack animation
if var_attack=1
	{
	//Make both Player and Rival "Unlean" to upright position
	if var_pose<>2{var_pose_anim=1}
	
	if var_pose_anim=1 {var_pose_counter+=1}
	
	if var_pose_counter>=4
		{
		//If Player is leaning forward, lean backwards (And vice versa)
		if var_pose<2 {var_pose+=1;var_pose_counter=0}
		if var_pose>2 {var_pose-=1;var_pose_counter=0}
		if var_pose=2 and var_pose_rival<>2
			{
			if var_pose_rival<2 {var_pose_rival+=1;var_pose_counter=0}
			if var_pose_rival>2 {var_pose_rival-=1;var_pose_counter=0}
			}
		}
	if var_pose=2 and var_pose_rival=2 {var_phase_anim=1;var_pose_counter=0}
	
	//Talking animation
	if var_phase_anim=1
		{
		var_speech_length+=1
		var_head_counter+=1
	
		if var_head_counter>=12 {var_head_counter=0}
		//Change between open and closed mouths
		if var_turn=1
			{
			if var_head_counter<=6 {var_head=spr_fghtr_head_1_a;var_head_pose=2}
			if var_head_counter>6 {var_head=spr_fghtr_head_2_a;var_head_pose=0}
			var_head_rival=spr_fghtr_head_1_a
			var_head_pose_rival=2
			}
		if var_turn=0
			{
			if var_head_counter<=6 {var_head_rival=spr_fghtr_head_1_a;var_head_pose_rival=2}
			if var_head_counter>6 {var_head_rival=spr_fghtr_head_2_a;var_head_pose_rival=0}
			var_head=spr_fghtr_head_1_a
			var_head_pose=2
			}
		
		if var_speech_length>=100 {var_phase_anim=2;var_head=spr_fghtr_head_1_a;var_head_rival=spr_fghtr_head_1_a;var_head_pose=2;var_head_pose_rival=2}
		}
	
	//Walking & Fighting
	if var_phase_anim=2
		{
		//Movement only when legs are crossed
		if x<var_posx and var_legs=spr_fghtr_legs_2_a {x+=0.5;var_phase_anim=1}
		if x>var_posx and var_legs=spr_fghtr_legs_2_a {x-=0.5;var_phase_anim=1}
		//When target x is reached, go to next animation phase
		if x<(var_posx+0.5) and x>(var_posx-0.5) {x=var_posx;var_phase_anim=3;var_legs=spr_fghtr_legs_1_a}
		
		//Legs animation
		var_sword=spr_fghtr_sword_2_a
		var_legs_counter+=1
		var_sword_counter+=1
	
		if var_legs_counter>=60 {var_legs_counter=0}
		//Change between leg's sprites for animation
		if var_legs_counter<=30 {var_legs=spr_fghtr_legs_1_a}
		if var_legs_counter>30 and var_legs_counter<40 {var_legs=spr_fghtr_legs_2_a}
		if var_legs_counter>=40 {var_legs=spr_fghtr_legs_1_a}
		
		//Sword animation
		if var_sword_counter>=6 {var_sword_counter=0}
		//Pick a random sword fighting pose, and restart randomizer
		if var_sword_counter<=3 {var_sword_pose=var_sword_fight}
		if var_sword_counter>3 {var_sword_reset=1}
		//Randomizer
		if var_sword_reset=1
			{
			var_sword_fight=irandom(6)
			var_sword_reset=0
			}
		}
		
	//Lean acording to the current pose
	if var_phase_anim=3
		{
		var_legs=spr_fghtr_legs_1_a
		if var_pose<var_pose_final{var_pose+=1}
		if var_pose>var_pose_final{var_pose-=1}
		if var_pose=var_pose_final
			{
			if var_turn=1
				{
				var_attack=2
				if global.var_end=0{global.var_state=1}
				}
			if var_turn=0
				{
				var_attack=0
				if global.var_end=0{global.var_state=0;global.var_retrigger=1}
				}
			var_speech_length=0
			var_phase_anim=0
			var_pose_anim=0
			
			}
		}
	}

//While not in attack mode, Rival "Mirrors" Player's Pose
if var_attack=0 or var_attack=2
	{
	var_pose_rival=5-var_pose
	var_head_pose_rival=5-var_head_pose
	var_sword_pose_rival=5-var_sword_pose
	}

//While attacking, Rival adapts its Pose by one frame (Not symmetrical), and does not speak
if var_attack=1
	{
	var_pose_rival=4-var_pose
	var_sword_pose_rival=4-var_sword_pose
	if var_phase_anim<>1 {var_head_pose_rival=4-var_head_pose}
	}

//If not in defeat or victory position, Rival uses the same sprites as Player and swords move with players
if var_pose>0 and var_pose<=4
	{
	var_sword_rival=var_sword
	var_sword_x=x
	var_sword_x_rival=x
	}
//On Rival's victory position, use regular sprites ("1")
if var_pose=5
	{
	var_torso=6
	var_torso_rival=0
	var_sword_rival=spr_fghtr_sword_1_a;var_sword_pose_rival=0
	var_head_rival=spr_fghtr_head_1_a;var_head_pose_rival=0
	//Flying sword animation
	if var_sword_rot>-96
		{
		var_sword_y-=0.75
		var_sword_x-=1
		var_sword_rot-=5
		}
	if var_sword_rot<=-96
		{
		if var_sword_y<220
			{
			var_sword_y+=8
			}
		}
	}
//On Rival's defeat position, use defeat sprites and pose ("2")
if var_pose=0
	{
	var_torso_rival=6
	var_torso=0
	var_sword_rival=spr_fghtr_sword_3_a
	var_head_rival=spr_fghtr_head_2_a;var_head_pose_rival=5
	//Flying sword animation
	if var_sword_rot_rival<96
		{
		var_sword_y_rival-=0.75
		var_sword_x_rival+=1
		var_sword_rot_rival+=4.5
		}
	if var_sword_rot_rival>=96
		{
		if var_sword_y_rival<220
			{
			var_sword_y_rival+=8
			}
		}
	}

if var_pos=0{global.var_end=1}
if var_pos=5{global.var_end=-1}


