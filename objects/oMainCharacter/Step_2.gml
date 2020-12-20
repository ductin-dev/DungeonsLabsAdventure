/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 68B97973
/// @DnDArgument : "code" "if die$(13_10){$(13_10)	audio_play_sound(sDie,4,false);$(13_10)	room_restart();$(13_10)} "
if die
{
	audio_play_sound(sDie,4,false);
	room_restart();
}