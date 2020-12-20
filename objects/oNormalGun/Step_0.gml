/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 08C99113
/// @DnDArgument : "code" "$(13_10)//POSITION________________________________________$(13_10)if active{$(13_10)	x=oMainCharacter.x;$(13_10)	y=oMainCharacter.y;$(13_10)	image_xscale=0.2;$(13_10)	image_yscale=0.2;$(13_10)}$(13_10)//SHOTTING_______________________________________$(13_10)if active{$(13_10)	if mouse_check_button(mb_left)&&(delay==0){$(13_10)		audio_play_sound(sNormalGun,8,false);$(13_10)		with instance_create_layer(x,y,"GunsAndBullets",oNormalBulletLV1){$(13_10)			direction=point_direction(x,y,mouse_x,mouse_y);$(13_10)			image_angle=direction;$(13_10)			image_xscale=0.7;$(13_10)			image_yscale=0.7$(13_10)			speed=5;$(13_10)		}$(13_10)		delay=60;$(13_10)	}$(13_10)	if (delay>0) delay-=1;$(13_10)}$(13_10)//SHOW__________________________________________$(13_10)if active&&(!instance_exists(oTypeNormal)) instance_create_layer(1900,50,"Show",oTypeNormal);$(13_10)if (destroy)&&(!active) {$(13_10)	destroy=0;$(13_10)	instance_destroy();$(13_10)	instance_destroy(oTypeNormal);$(13_10)}$(13_10)			$(13_10)	$(13_10)$(13_10)$(13_10)"

//POSITION________________________________________
if active{
	x=oMainCharacter.x;
	y=oMainCharacter.y;
	image_xscale=0.2;
	image_yscale=0.2;
}
//SHOTTING_______________________________________
if active{
	if mouse_check_button(mb_left)&&(delay==0){
		audio_play_sound(sNormalGun,8,false);
		with instance_create_layer(x,y,"GunsAndBullets",oNormalBulletLV1){
			direction=point_direction(x,y,mouse_x,mouse_y);
			image_angle=direction;
			image_xscale=0.7;
			image_yscale=0.7
			speed=5;
		}
		delay=60;
	}
	if (delay>0) delay-=1;
}
//SHOW__________________________________________
if active&&(!instance_exists(oTypeNormal)) instance_create_layer(1900,50,"Show",oTypeNormal);
if (destroy)&&(!active) {
	destroy=0;
	instance_destroy();
	instance_destroy(oTypeNormal);
}