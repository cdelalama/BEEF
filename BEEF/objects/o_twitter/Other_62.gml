/// @description Twitter Call

///Twitter get Bio
if(ds_map_find_value(async_load, "id") == getTwitterBio){

	if (ds_map_find_value(async_load, "status") == 0)
	{
		show_debug_message("XXXXXXX IN TWITTER GET BIO ASYNC XXXXXXXXXXXXXXXX")
		json = async_load[? "result"];
		var json_escapefixed = string_replace_all(json, "\\", "\\\\");
		show_debug_message(json)
		
		show_debug_message(json_escapefixed)
		var response = json_parse(json_escapefixed)
		show_debug_message(json);
		show_debug_message(response);
		var twitterBio = response.data[0].description;
		//show_debug_message( "Twitter Bio: " + twitterBio)
		global.twitter_bio=twitterBio;
		global.twitter_bio_received=true;
		getTwitterBio = -1;

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
		
		var json = async_load[? "result"];
		//show_debug_message(json)
		//var json_escapefixed = string_replace_all(json, "\\", "\\\\");
		//show_debug_message(json_escapefixed)
		var response = json_parse(json)

		global.twitter_bio_insults =json_parse( response.choices[0].text);
		show_debug_message(global.twitter_bio_insults)
		global.twitter_bio_insults_received=true;	
		
		global.twitter_bio_insults_get = -1;

	}    else
    {
        json = "null";
    }
}

/*

		var result =  json_parse(response.choices[0].text)
		show_debug_message(result)
		//show_debug_message( result[3])
		global.GPT3_generic_insults = result;
		global.GPT3_generic_insults_received=true;
		get = -1;

*/

///Twitter get userID last 10 tweets
if(ds_map_find_value(async_load, "id") == getTweets){

	if (ds_map_find_value(async_load, "status") == 0)
	{
		show_debug_message("XXXXXXX IN TWITTER GET last 10 Tweets XXXXXXXXXXXXXXXX")
		//show_debug_message(async_load[? "result"])
		var json2 = async_load[? "result"];
		
		var json2_escapefixed = string_replace_all(json2, "\\", "\\\\");
		var response = json_parse(json2_escapefixed);
		show_debug_message( response.data[0].text)
		/*
		str1 = "Hexxo Worxd";
str2 = string_replace_all(str1, "x", "l");
		*/
	/*	
		try{
			var response = json_parse(json2_escapefixed);
		}
		catch(_exception){
		    show_debug_message(_exception.message);
			show_debug_message(_exception.longMessage);
			  show_debug_message(_exception.script);
			   show_debug_message(_exception.stacktrace);
		}
*/
		//json_string = json_stringify(json)
		//var response = json_parse(json_string)
		//var twitterData = response.data[0];
		//var response2 = json_parse(response)
		//var twitterBio = response.data[0].description;
		//show_debug_message( "Twitter last 10: " + response.data[0])
		//global.twitter_bio=twitterBio;
		//global.twitter_bio_received=true;
		getTweets = -1;

	}    else
    {
        json = "null";
    }
}

/*
		show_debug_message("XXXXXXX IN TWITTER GET BIO ASYNC XXXXXXXXXXXXXXXX")
		json = async_load[? "result"];
		var response = json_parse(json)
		var twitterBio = response.data[0].description;
		show_debug_message( "Twitter Bio: " + twitterBio)
		global.twitter_bio=twitterBio;
		global.twitter_bio_received=true;
		getTwitterBio = -1;

*/