/// @description Twitter Call

///Twitter get Bio
if(ds_map_find_value(async_load, "id") == getTwitterBio){

	if (ds_map_find_value(async_load, "status") == 0)
	{
		show_debug_message("XXXXXXX IN TWITTER GET BIO ASYNC XXXXXXXXXXXXXXXX")
		json = async_load[? "result"];
		var json_escapefixed = string_replace_all(json, "\\", "\\\\");

		var response = json_parse(json_escapefixed)
		var twitterBio="";
		try {
			twitterBio = response.data[0].description;
		}
		catch(error){
			show_message(error)
			global.TwitterError=true;
		
		}

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
		show_debug_message(json)
		//var json_escapefixed = string_replace_all(json, "\\", "\\\\");
		//show_debug_message(json_escapefixed)
		var response = json_parse(json)
		show_debug_message(response)
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
		var json2 = async_load[? "result"];		
		var json2_escapefixed = string_replace_all(json2, "\\", "\\\\");
		var response = json_parse(json2_escapefixed);

		// Loop through each tweet structure and extract the 'text' property
		show_debug_message(array_length( response.data))
		for (var i = 0; i < array_length( response.data); i++) {
		    var text =  response.data[i].text;
		    array_push(global.tweetTexts, text);
		}

		global.twitter_tweets_received=true;
		getTweets = -1;

	}    else
    {
        json = "null";
    }
}

