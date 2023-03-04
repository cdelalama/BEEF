// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gpt3ChatCall(prompt, temperature, maxTokens){
	  var token = global.GPT3_API_key;
  var url = global.GPT3_Chat_API_url;
  var messages =[{"role":"system", "content": prompt}]
  
  
  var body = new JsonStruct(
    "model", global.GPT3_Chat_model,
    "messages", messages,
    "temperature",temperature,
    "max_tokens",maxTokens
  );

  var jsonstrBody = jsons_encode(body); 
  
  var map = ds_map_create();
    ds_map_add(map, "Authorization", token);
    ds_map_add(map, "Content-Type", "application/json");    
  get = http_request(url, "POST", map, jsonstrBody);
  return get;

}