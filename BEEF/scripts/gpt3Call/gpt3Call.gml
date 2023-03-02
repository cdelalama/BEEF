function gpt3Call(prompt, temperature, maxTokens){
  var token = global.GPT3_API_key;
  var url = global.GPT3_API_url;
  var body = new JsonStruct(
    "model", global.GPT3_model,
    "prompt", prompt,
    "temperature",temperature,
    "max_tokens",maxTokens
  );

  var jsonstrBody = jsons_encode(body); //{"model":"text-davinci-003", "prompt":"Where is Santa?", "temperature": 0.5 }
  
  var map = ds_map_create();
    ds_map_add(map, "Authorization", token);
    ds_map_add(map, "Content-Type", "application/json");    
  get = http_request(url, "POST", map, jsonstrBody);
  return get;

}