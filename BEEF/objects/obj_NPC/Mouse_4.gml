/// @description 

msg = [
	[global.textGPT3, "Rob", spr_image1],
	["Hello! It's-a-me, player!", "Player", spr_image0],
	["Player, that's a weird name.", "Rob", spr_image1],
	["Well, anyway. Do you wanna earn some money? I've got quite the job for you!", "Rob", -1],
	["no", "Player", spr_image0]
]

if (!instance_exists(obj_textbox)) {
	// Create
	var _tb = instance_create_layer(0, 0, "Instances", obj_textbox);
	
	// Add messages to textbox's list
	var _list = _tb.messages;
	
	for (var i=0; i<array_length_1d(msg); i++) {
		var _arr = msg[i];
		
		ds_list_add(_list, _arr);
	}
}