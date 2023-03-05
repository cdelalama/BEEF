
show_debug_message("--------DEBUG ASYNC SOCIAL");


show_debug_message(json_encode(async_load));
deafult = ds_map_find_value(async_load,"default");
first_item = ds_list_find_value(deafult,0);
//first_item_name = ds_map_find_value(first_item, "Name");
show_message(first_item);