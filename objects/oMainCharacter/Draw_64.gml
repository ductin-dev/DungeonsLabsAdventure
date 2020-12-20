/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 20898DE6
/// @DnDArgument : "x1" " x-20 "
/// @DnDArgument : "y1" "y-60"
/// @DnDArgument : "x2" "x+20"
/// @DnDArgument : "y2" "y-55"
/// @DnDArgument : "value" "hp/maxhp*100"
/// @DnDArgument : "backcol" "$FF4C4C4C"
/// @DnDArgument : "barcol" "$FF4BC3FF"
/// @DnDArgument : "mincol" "$FF0000FF"
/// @DnDArgument : "maxcol" "$FFFF0C00"
draw_healthbar( x-20 , y-60, x+20, y-55, hp/maxhp*100, $FF4C4C4C & $FFFFFF, $FF0000FF & $FFFFFF, $FFFF0C00 & $FFFFFF, 0, (($FF4C4C4C>>24) != 0), (($FF4BC3FF>>24) != 0));