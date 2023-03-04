/// @description GPT3 Startup Insults
// You can write your code in this editor

//If Generic Startup Insults
if(ds_map_find_value(async_load, "id") == getStartupInsults){

	if (ds_map_find_value(async_load, "status") == 0)
	{
		show_debug_message("XXXXXXX IN STARTUP INSULTS ASYNC XXXXXXXXXXXXXXXX")
		json = async_load[? "result"];
		var response = json_parse(json)
		var result =  json_parse(response.choices[0].text)
		show_debug_message( result)
		
		global.GPT3_startup_insults = result;
		//show_debug_message( "XXXXXGLOBALXXXX",global.GPT3_startup_insults)
		//show_debug_message( global.GPT3_startup_insults)
		global.GPT3_startup_insults_received=true;
		global.getStartupInsults = -1;

	}    else
    {
        json = "null";
    }
}











