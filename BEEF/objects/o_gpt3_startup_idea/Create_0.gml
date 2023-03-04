/// @description 
getStartupIdea = -1;
getStartupIdea = gpt3Call(global.GPT3_prompt_startup_idea, global.GPT3_temperature, global.GPT3_maxTokens);