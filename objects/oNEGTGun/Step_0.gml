/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5ABAC449
/// @DnDArgument : "code" "active=1;$(13_10)var span_angle=instance_nearest(x,y,oNEGTBody).image_angle;$(13_10)//2D CONLISION________________________________________$(13_10)direction=point_direction(x,y,oMainCharacter.x,oMainCharacter.y);$(13_10)if abs(angle_difference(direction,span_angle))>60 {active=0;direction=span_angle;} $(13_10)image_angle=direction$(13_10)//____________________________________________________$(13_10)$(13_10)if (active==1)&&(delay<=0){$(13_10)	 audio_play_sound(sNormalGun,2,false);$(13_10)	 with (instance_create_depth(x,y,1,oLV1))$(13_10)	 {$(13_10)		 image_xscale=0.6;$(13_10)		 image_yscale=0.6;$(13_10)		 direction=other.direction;$(13_10)		 image_angle=direction;$(13_10)		 speed=5;$(13_10)	 }$(13_10)	 delay=125 ;$(13_10)}$(13_10)delay--;  $(13_10)                   "
active=1;
var span_angle=instance_nearest(x,y,oNEGTBody).image_angle;
//2D CONLISION________________________________________
direction=point_direction(x,y,oMainCharacter.x,oMainCharacter.y);
if abs(angle_difference(direction,span_angle))>60 {active=0;direction=span_angle;} 
image_angle=direction
//____________________________________________________

if (active==1)&&(delay<=0){
	 audio_play_sound(sNormalGun,2,false);
	 with (instance_create_depth(x,y,1,oLV1))
	 {
		 image_xscale=0.6;
		 image_yscale=0.6;
		 direction=other.direction;
		 image_angle=direction;
		 speed=5;
	 }
	 delay=125 ;
}
delay--;