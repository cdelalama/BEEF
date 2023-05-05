/// @description GPT3 startup idea


//If Startup Idea received
if(ds_map_find_value(async_load, "id") == getStartupIdea){

	if (ds_map_find_value(async_load, "status") == 0)
	{
		show_debug_message("XXXXXXX IN o_gpt3_startup_idea STARTUP IDEA ASYNC XXXXXXXXXXXXXXXX")
		json = async_load[? "result"];
		var response = json_parse(json)
		show_debug_message( response)
		var result =  json_parse(response.choices[0].text)
		show_debug_message( result)
		global.GPT3_startup_idea_name=result.startup_name;
		global.GPT3_startup_idea_business_model=result.business_model;
		global.GPT3_startup_idea_explanation=result.explanation;;

		show_debug_message( global.GPT3_startup_idea_name)
		show_debug_message( global.GPT3_startup_idea_business_model)
		show_debug_message( global.GPT3_startup_idea_explanation)
		
		global.GPT3_startup_idea_received = true;
		getStartupIdea = -1;
	}    else
    {
        json = "null";
    }
}


//Startup idea insults received
if(ds_map_find_value(async_load, "id") == global.GPT3_startup_idea_insults_get){

	if (ds_map_find_value(async_load, "status") == 0)
	{
		show_debug_message("XXXXXXX IN o_gpt3_startup_idea STARTUP IDEA INSULTS ASYNC XXXXXXXXXXXXXXXX")
		
		json = async_load[? "result"];
		var response = json_parse(json)
		show_debug_message( response)		
		var result =  json_parse(response.choices[0].text)
		show_debug_message(result)
		global.GPT3_startup_idea_insults = result;
		global.GPT3_startup_idea_insults_received = true;		
		global.GPT3_startup_idea_insults_get = -1;
	}    else
    {
        json = "null";
    }
}