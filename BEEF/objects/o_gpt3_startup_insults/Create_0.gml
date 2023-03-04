/// @description Generic Startup Insults

getStartupInsults=-1;


getStartupInsults = gpt3Call(global.GPT3_prompt_startup_insults, global.GPT3_temperature, global.GPT3_maxTokens);