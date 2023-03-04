
//Position and status variables

var_pos=3							//Target Position where the game is, from 0-Win to 5-Loose
var_posx=170						//Target x position for each position

x=var_posx							//Start at position 3

var_phase_anim=0					//0-Stopped, 1-Talking, 2-Walking & Fighting, 3-Lean to position

var_attack=0						//0-No fighting, Player's turn, 1-Fight, 2-No fighing, Rival's turn
var_turn=0							//0-Player

//Player animation and draw variables

var_pose=3							//Torso, legs and shadow image index (Which frame to use). Also used to check the actual state of the game
var_pose_anim=0						//Animation control for torso
var_pose_counter=0					//Counter for torso animation
var_pose_final=3					//Target image index

var_head_pose=3						//Head image index (Which frame to use)
var_head=spr_fghtr_head_1_a			//Head sprite index (Which sprite to use)
var_head_counter=0					//Counter for head animation
var_speech_length=0					//How long the monologue lasts

var_sword_pose=3					//Sword image index (Which frame to use)
var_sword=spr_fghtr_sword_1_a		//Sword sprite index (Which sprite to use)
var_sword_fight=0					//
var_sword_reset=0					//
var_sword_counter=0					//

var_legs=spr_fghtr_legs_1_a			//Legs sprite index (Which sprite to use)
var_legs_counter=0					//Counter for legs animation
var_torso=3							//Player's torso image index (Which frame to use)
var_torso_rival=4					//Rival's torso image index (Which frame to use)

//Rival animation and draw variables

var_pose_rival=5-var_pose			// Rival's torso, legs and shadow image index (Which frame to use)
var_head_pose_rival=5-var_pose		// Rival's head image index (Which frame to use)
var_sword_pose_rival=5-var_pose		// Rival's sword image index (Which frame to use)

var_sword_rival=spr_fghtr_sword_1_a	// Rival's sword sprite index (Which sprite to use)
var_head_rival=spr_fghtr_head_1_a	// Rival's head sprite index (Which sprite to use)

var_sword_y=y						// Y position of the sword for the Player
var_sword_y_rival=y					// Y position of the sword for the Rival

var_sword_x=x						// X position of the sword for the Player
var_sword_x_rival=x					// X position of the sword for the Rival

var_sword_rot=0						// Rotation of the sword for the Player
var_sword_rot_rival=0				// Rotation of the sword for the Rival

global.var_position=var_pos			// Global variable to check who wins
