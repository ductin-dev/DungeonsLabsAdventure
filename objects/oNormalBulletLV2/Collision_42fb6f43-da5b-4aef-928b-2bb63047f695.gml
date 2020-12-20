/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0E9D6D95
/// @DnDArgument : "code" "with (other){$(13_10)	hp-=25;$(13_10)	flash=3;$(13_10)}$(13_10)$(13_10)audio_play_sound(sHitWall,2,false);$(13_10)instance_destroy(); "
with (other){
	hp-=25;
	flash=3;
}

audio_play_sound(sHitWall,2,false);
instance_destroy();