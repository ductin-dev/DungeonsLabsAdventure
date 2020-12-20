/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7CD8ED12
/// @DnDArgument : "code" "if (hp<=0){$(13_10)	instance_destroy();$(13_10)	instance_destroy(instance_nearest(x,y,oNEGTGun));$(13_10)	audio_play_sound(sExplosion1,7,false);$(13_10)	effect_create_above(ef_explosion,x,y,5,c_red);$(13_10)}$(13_10)$(13_10)"
if (hp<=0){
	instance_destroy();
	instance_destroy(instance_nearest(x,y,oNEGTGun));
	audio_play_sound(sExplosion1,7,false);
	effect_create_above(ef_explosion,x,y,5,c_red);
}