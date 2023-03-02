/// @description Game Init


///Vars initialitation
fname =  "startupism.ini";
 ///Startup idea///
global.GPT3_prompt_startup_idea_file="";
global.GPT3_prompt_startup_idea = "";
global.GPT3_startup_idea_name="";
global.GPT3_startup_idea_business_model="";
global.GPT3_startup_idea_explanation="";
global.GPT3_startup_idea_received=false;
 ////Startup Idea Insults ///
global.GPT3_prompt_startup_idea_insults_INTRO_file = "";
global.GPT3_prompt_startup_idea_insults_INTRO = "";
global.GPT3_prompt_startup_idea_insults_QUESTION_file = "";
global.GPT3_prompt_startup_idea_insults_QUESTION = "";
global.GPT3_startup_idea_insults_received=false;

global.GPT3_startup_idea_insults_get=-1;

  ///Generic Insults ///
global.GPT3_prompt_generic_insults_file = "";
global.GPT3_prompt_generic_insults = "";
global.GPT3_generic_insults = "";
global.GPT3_generic_insults_received=false;

 ///Generic Startup Insults///
global.GPT3_prompt_startup_insults_file = "";
global.GPT3_prompt_startup_insults = "";
global.GPT3_startup_insults_received=false;
global.GPT3_startup_insults_get=-1; //to assign to async calls
 
 ///Twitter///
global.twitter_bio = "";
global.twitter_bio_received=false;
global.twitter_bio_insults_received=false;
global.twitter_bio_prompt_insults_INTRO_file = "";
global.twitter_bio_prompt_insults_INTRO = "";
global.twitter_bio_prompt_insults_QUESTION_file = "";
global.twitter_bio_prompt_insults_QUESTION = "";
global.twitter_bio_insults_get=-1;



///Load Ini File
ini_open(fname)
global.GPT3_API_key = ini_read_string("GPT3", "key", 0);
global.GPT3_API_url = ini_read_string("GPT3", "url", 0);
global.GPT3_model = ini_read_string("GPT3", "model", 0);
global.GPT3_temperature = ini_read_real("GPT3", "temperature", 0);
global.GPT3_maxTokens = floor(ini_read_real("GPT3", "max_tokens", 0));
global.GPT3_data_folder = ini_read_string("GPT3", "data_folder", 0);
global.GPT3_prompt_generic_insults_file =  ini_read_string("GPT3", "prompt_generic_insults_file", 0);
global.GPT3_prompt_startup_idea_file =  ini_read_string("GPT3", "prompt_startup_idea_file", 0);
global.GPT3_prompt_startup_idea_insults_INTRO_file =  ini_read_string("GPT3", "prompt_startup_insults_INTRO_file", 0);
global.GPT3_prompt_startup_idea_insults_QUESTION_file =  ini_read_string("GPT3", "prompt_startup_insults_QUESTION_file", 0);
global.GPT3_prompt_startup_insults_file=ini_read_string("GPT3","prompt_startup_insults_file",0);
global.Twitter_API_key = ini_read_string("Twitter", "key", 0);
global.Twitter_API_url = ini_read_string("Twitter", "url", 0);
global.twitter_bio_prompt_insults_INTRO_file=ini_read_string("Twitter","twitter_bio_prompt_insults_INTRO_file",0);
global.twitter_bio_prompt_insults_QUESTION_file=ini_read_string("Twitter","twitter_bio_prompt_insults_QUESTION_file",0); 

ini_close();

  ///////////////////////
 ///Read GPT3 Prompts///
///////////////////////

GPT3_data_dir = working_directory +  global.GPT3_data_folder

///Startup Idea Prompt
var file_prompt_startup_idea = file_text_open_read(GPT3_data_dir + global.GPT3_prompt_startup_idea_file);
while(!file_text_eof(file_prompt_startup_idea))
{
	global.GPT3_prompt_startup_idea += file_text_readln(file_prompt_startup_idea);
}
file_text_close(file_prompt_startup_idea);

///Generic Insults Prompt
var file_prompt_generic_insults = file_text_open_read(GPT3_data_dir + global.GPT3_prompt_generic_insults_file);
while(!file_text_eof(file_prompt_generic_insults))
{
	global.GPT3_prompt_generic_insults += file_text_readln(file_prompt_generic_insults);
}
file_text_close(file_prompt_generic_insults);

////////
//Generic Startup Insults Prompt 
var file_prompt_startup_insults = file_text_open_read(GPT3_data_dir + global.GPT3_prompt_startup_insults_file);
while(!file_text_eof(file_prompt_startup_insults))
{
	global.GPT3_prompt_startup_insults += file_text_readln(file_prompt_startup_insults);
}
file_text_close(file_prompt_startup_insults);

///Startup idea insults Prompt
var file_prompt_startup_insults_INTRO = file_text_open_read(GPT3_data_dir + global.GPT3_prompt_startup_idea_insults_INTRO_file);
while(!file_text_eof(file_prompt_startup_insults_INTRO))
{
	global.GPT3_prompt_startup_idea_insults_INTRO += file_text_readln(file_prompt_startup_insults_INTRO);
}
file_text_close(file_prompt_startup_insults_INTRO);

var file_prompt_startup_insults_QUESTION = file_text_open_read(GPT3_data_dir + global.GPT3_prompt_startup_idea_insults_QUESTION_file);
while(!file_text_eof(file_prompt_startup_insults_QUESTION))
{
	global.GPT3_prompt_startup_idea_insults_QUESTION += file_text_readln(file_prompt_startup_insults_QUESTION);
}
file_text_close(file_prompt_startup_insults_QUESTION);

///Twitter Bio Insults Prompt
var file_twitter_bio_prompt_insults_INTRO = file_text_open_read(GPT3_data_dir + global.twitter_bio_prompt_insults_INTRO_file);


while(!file_text_eof(file_twitter_bio_prompt_insults_INTRO))
{
	global.twitter_bio_prompt_insults_INTRO += file_text_readln(file_twitter_bio_prompt_insults_INTRO);
}
file_text_close(file_twitter_bio_prompt_insults_INTRO);

var file_twitter_bio_prompt_insults_QUESTION = file_text_open_read(GPT3_data_dir + global.twitter_bio_prompt_insults_QUESTION_file);
while(!file_text_eof(file_twitter_bio_prompt_insults_QUESTION))
{
	global.twitter_bio_prompt_insults_QUESTION += file_text_readln(file_twitter_bio_prompt_insults_QUESTION);
}
file_text_close(file_twitter_bio_prompt_insults_QUESTION);
/*
	show_debug_message("X!!!!!!!!!!!!!!!!!!!!!!!!X");
	show_debug_message(global.twitter_bio_prompt_insults_INTRO);
		show_debug_message(global.GPT3_prompt_startup_idea_insults_QUESTION);

*/

