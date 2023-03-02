/// @description


if(global.GPT3_startup_idea_received){
	startup_insults_prompt="";	
	show_debug_message("XXXXXXX IN STEP LOOP -- Startup idea received XXXXXXXXXXXXXXXX")
	startup_insults_prompt = gpt3_build_startup_insults_prompt();
	show_debug_message(startup_insults_prompt);

	
	global.GPT3_startup_idea_insults_get = gpt3Call(startup_insults_prompt, global.GPT3_temperature, global.GPT3_maxTokens); //we save the ID for the http call in a global variable
	//show_debug_message(global.GPT3_startup_insults_get);
	//global.GPT3_startup_insults_received=true;
	global.GPT3_startup_idea_received=false;

}

if(global.GPT3_startup_insults_received){
	show_debug_message("XXXXXXX IN STEP LOOP -- Startup Insults received XXXXXXXXXXXXXXXX")
	global.GPT3_startup_insults_received = false;
}


if(global.twitter_bio_received){
	twitter_bio_insults_prompt="";
	
	show_debug_message("XXXXXXX IN STEP LOOP -- TWITTER BIO RECEIVED XXXXXXXXXXXXXXXX")
	twitter_bio_insults_prompt=twitter_build_bio_insults_prompt();
	show_debug_message(twitter_bio_insults_prompt);
	global.twitter_bio_insults_get = gpt3Call(twitter_bio_insults_prompt, global.GPT3_temperature, global.GPT3_maxTokens);
	global.twitter_bio_received=false;

}




