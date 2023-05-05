/// @description Insert description here
// You can write your code in this editor

if keyboard_check_released(vk_f5)
{
    game_restart();
}

if keyboard_check_released(vk_enter) and global.var_end=1
{
    room_goto(rm_key);
}

if global.var_retrigger=1
{
    var_buffer+=1;
}

if var_buffer>=5 and  global.var_turn_count<=5
{
    i=i+4;
    j=j+1;
    global.var_retrigger=0;
    var_buffer=0;
    global.var_turn_count+=1;
}

// Process the received data only if it's not processed yet
if !global.data_processed
{
    if(global.GPT3_generic_insults_received){
        global.var_loose1=global.GPT3_generic_insults[i];
        global.var_loose2=global.GPT3_generic_insults[i+1];
        global.var_loose1_r=global.GPT3_generic_insults[i+2];
        global.var_loose2_r=global.GPT3_generic_insults[i+3];
		global.GPT3_generic_insults_received=false
    }

    if(global.GPT3_startup_insults_received){
        global.var_mid1=global.GPT3_startup_insults[i];
        global.var_mid2=global.GPT3_startup_insults[i+1];
        global.var_mid1_r=global.GPT3_startup_insults[i+2];
        global.var_mid2_r=global.GPT3_startup_insults[i+3];
		global.GPT3_startup_insults_received=false
    }

    if (global.twitter_bio_insults_received){
        global.var_win=global.twitter_bio_insults[j];//???
		global.twitter_bio_insults_received=false
    }

    if (global.GPT3_startup_idea_insults_received){
        global.var_win_r=global.GPT3_startup_idea_insults[j];
		show_debug_message("Startup idea insults: ");
		show_debug_message(global.GPT3_startup_idea_insults[j]);
		global.GPT3_startup_idea_insults_received=false
		
    }

    if i > 0{
        global.var_mid1=global.GPT3_startup_insults[i];
        global.var_mid2=global.GPT3_startup_insults[i+1];
        global.var_mid1_r=global.GPT3_startup_insults[i+2];
        global.var_mid2_r=global.GPT3_startup_insults[i+3];
    }

    // Check if all data is received and processed
    if (global.GPT3_generic_insults_received && global.GPT3_startup_insults_received && global.twitter_bio_insults_received && global.GPT3_startup_idea_insults_received)
    {		show_debug_message("YYYYYYYYY ALL DATA PROCESSED!!! YYYYYYYYYYY ");

        global.data_processed = true;
    }
}
