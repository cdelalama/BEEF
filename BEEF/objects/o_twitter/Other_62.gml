/// @description Twitter Call

///Twitter get Bio
if(ds_map_find_value(async_load, "id") == get){

	if (ds_map_find_value(async_load, "status") == 0)
	{
		show_debug_message("XXXXXXX IN TWITTER GET BIO ASYNC XXXXXXXXXXXXXXXX")
		json = async_load[? "result"];
		var response = json_parse(json)
		var twitterBio = response.data[0].description;
		show_debug_message( "Twitter Bio: " + twitterBio)
		global.twitter_bio=twitterBio;
		global.twitter_bio_received=true;
		get = -1;

	}    else
    {
        json = "null";
    }
}



///Twitter get Bio Insults
if(ds_map_find_value(async_load, "id") == global.twitter_bio_insults_get){

	if (ds_map_find_value(async_load, "status") == 0)
	{
		show_debug_message("XXXXXXX IN TWITTER BIO INSULTS ASYNC XXXXXXXXXXXXXXXX")
		
		json = async_load[? "result"];
		var response = json_parse(json)
		var twitterBioInsults = response.choices[0].text;
		show_debug_message(twitterBioInsults)
		global.twitter_bio_insults_received=true;	
		
		global.twitter_bio_insults_get = -1;

	}    else
    {
        json = "null";
    }
}

