
function gpt3_build_startup_insults_prompt(){
	startup_insults_prompt="";
	if(global.GPT3_startup_idea_received){	
		
		startup_insults_prompt = global.GPT3_prompt_startup_idea_insults_INTRO;
		startup_insults_prompt += "\nStartup Name: " + global.GPT3_startup_idea_name;
		startup_insults_prompt += "\nStartup business model: " + global.GPT3_startup_idea_business_model;
		startup_insults_prompt += "\nStartup explanation: " +  global.GPT3_startup_idea_explanation;
		startup_insults_prompt += "\n" + global.GPT3_prompt_startup_idea_insults_QUESTION
	
		//show_debug_message("PROMPT: "+ startup_insults_prompt)
		return startup_insults_prompt
		}
	return startup_insults_prompt
}