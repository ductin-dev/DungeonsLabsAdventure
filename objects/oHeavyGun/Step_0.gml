/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 08C99113
/// @DnDArgument : "code" "//POSISION___________________________________$(13_10)if active{$(13_10)	x=oMainCharacter.x;$(13_10)	y=oMainCharacter.y;$(13_10)	image_xscale=0.3;$(13_10)	image_yscale=0.3;$(13_10)}$(13_10)//SHOTTING___________________________________$(13_10)if active{$(13_10)	if (mouse_check_button(mb_left)||device_mouse_check_button(os_android,mb_left))&&(delay==0){$(13_10)		audio_play_sound(sNormalGun,8,false);$(13_10)		with instance_create_layer(x,y,"WallAndCharacters",oNormalBulletLV2){$(13_10)			direction=point_direction(x,y,mouse_x,mouse_y)+random_range(-2.8,2.8);$(13_10)			image_angle=direction;$(13_10)			image_xscale=0.6;$(13_10)			image_yscale=0.6; $(13_10)			speed=5.5;$(13_10)		}$(13_10)		delay=20;$(13_10)	}$(13_10)	if (delay>0) delay-=1;$(13_10)}$(13_10)//SHOW_______________________________$(13_10)if (active)&&(!instance_exists(oTypeHeavy)) instance_create_layer(1900,50,"Show",oTypeHeavy);$(13_10)if (!active)&&(destroy) {$(13_10)	destroy=0;$(13_10)	instance_destroy();$(13_10)	instance_destroy(oTypeHeavy);$(13_10)}$(13_10)			$(13_10)	$(13_10)$(13_10)$(13_10)"
//POSISION___________________________________
if active{
	x=oMainCharacter.x;
	y=oMainCharacter.y;
	image_xscale=0.3;
	image_yscale=0.3;
}
//SHOTTING___________________________________
if active{
	if (mouse_check_button(mb_left)||device_mouse_check_button(os_android,mb_left))&&(delay==0){
		audio_play_sound(sNormalGun,8,false);
		with instance_create_layer(x,y,"WallAndCharacters",oNormalBulletLV2){
			direction=point_direction(x,y,mouse_x,mouse_y)+random_range(-2.8,2.8);
			image_angle=direction;
			image_xscale=0.6;
			image_yscale=0.6; 
			speed=5.5;
		}
		delay=20;
	}
	if (delay>0) delay-=1;
}
//SHOW_______________________________
if (active)&&(!instance_exists(oTypeHeavy)) instance_create_layer(1900,50,"Show",oTypeHeavy);
if (!active)&&(destroy) {
	destroy=0;
	instance_destroy();
	instance_destroy(oTypeHeavy);
}