/// @description GPT3 Generic Insults
// You can write your code in this editor

//If Generic Insults
if(ds_map_find_value(async_load, "id") == get){

	if (ds_map_find_value(async_load, "status") == 0)
	{
		show_debug_message("XXXXXXX IN GENERIC INSULTS ASYNC XXXXXXXXXXXXXXXX")
		json = async_load[? "result"];
		var response = json_parse(json)
		//show_debug_message( response)
		var result =  json_parse(response.choices[0].text)
		show_debug_message(result)
		//show_debug_message( result[3])
		global.GPT3_generic_insults = result;
		global.GPT3_generic_insults_received=true;
		get = -1;

	}    else
    {
        json = "null";
    }
}







