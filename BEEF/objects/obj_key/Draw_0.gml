/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_lime)
draw_set_font(fnt_fff_forward)

draw_text(x,y,"Please, copy your wallet adress")

if clipboard_has_text()
{
    str = clipboard_get_text();
    clipboard_set_text("");
}

draw_set_font(fnt_fff_forward2)
draw_text_ext(x,y+16,str,8,200)
show_debug_message(global.var_key)

draw_set_font(fnt_fff_forward)
draw_text(x,y+48,"Press Enter to submit")

if global.var_key_submitted=true{draw_text(x,y+64,"Adress submitted!")}

draw_text(x,y+80,"Press F5 to play again")