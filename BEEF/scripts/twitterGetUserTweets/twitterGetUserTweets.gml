
function twitterGetUserTweets(userID){

	var token = global.Twitter_API_key;
	var map = ds_map_create();
	ds_map_add(map, "Authorization", "Bearer " + token);
	ds_map_add(map, "Content-Type", "application/json");
	//show_debug_message("Twitter URI: " + global.Twitter_API_url);

	//var url = global.Twitter_API_url + "usernames="+ twiterHandle+"&user.fields=description" ;
	var url = "https://api.twitter.com/2/users/" + userID + "/tweets?max_results=10&exclude=retweets,replies"  ;	
	show_debug_message("Twitter URI3: " +url);
	get = http_request(url, "GET", map, "");
	return get;
//https://api.twitter.com/2/users/by?
}