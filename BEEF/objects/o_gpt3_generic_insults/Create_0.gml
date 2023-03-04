/// @description Call GPT3
// You can write your code in this editor

getGenericInsults=-1;


get = gpt3Call(global.GPT3_prompt_generic_insults, global.GPT3_temperature, global.GPT3_maxTokens);
//getGenericInsultsChat=gpt3ChatCall(global.GPT3_prompt_generic_insults,  global.GPT3_temperature, global.GPT3_maxTokens)



