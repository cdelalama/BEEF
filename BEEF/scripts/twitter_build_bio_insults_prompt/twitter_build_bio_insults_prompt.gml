// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function twitter_build_bio_insults_prompt(){
		twitter_bio_insults_prompt="";

	if(global.twitter_bio_received && global.twitter_tweets_received){	
		
		twitter_bio_insults_prompt = global.twitter_bio_prompt_insults_INTRO;
		twitter_bio_insults_prompt += "\n"+ global.twitter_bio;
		twitter_bio_insults_prompt += "\n"+ "and the following tweets from the same person:";
		for (var i = 0; i < array_length(global.tweetTexts); i++) {
			twitter_bio_insults_prompt += "\n" + global.tweetTexts[i];
		}

		twitter_bio_insults_prompt += "\n" + global.twitter_bio_prompt_insults_QUESTION
	
		show_debug_message("PROMPT: "+ twitter_bio_insults_prompt)
		return twitter_bio_insults_prompt
		}
	return twitter_bio_insults_prompt

}