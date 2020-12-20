/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4016A5DA
/// @DnDArgument : "code" "if (active--) {$(13_10)var w=string_width(text);$(13_10)var h=string_height(text);$(13_10)draw_roundrect_color(x-8,y-8,x+w+8,y+h+8,c_white,c_gray,false);$(13_10)draw_set_color(c_black);$(13_10)draw_text(x,y,text);$(13_10)draw_sprite(guideImg1,0,0,0);$(13_10)}$(13_10) "
if (active--) {
var w=string_width(text);
var h=string_height(text);
draw_roundrect_color(x-8,y-8,x+w+8,y+h+8,c_white,c_gray,false);
draw_set_color(c_black);
draw_text(x,y,text);
draw_sprite(guideImg1,0,0,0);
}