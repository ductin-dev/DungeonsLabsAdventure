/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 137A76A2
/// @DnDArgument : "code" "if (showVirtualKey==1){$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)showVirtualKey=0;$(13_10)}$(13_10)$(13_10)left= keyboard_check(vk_left)||keyboard_check(ord("A"));$(13_10)right= keyboard_check(vk_right)||keyboard_check(ord("D"));$(13_10)jump= keyboard_check(vk_space)||keyboard_check(vk_up)||keyboard_check(ord("W"));$(13_10)//SPEED_________________________________________________________$(13_10)ismove=right-left;$(13_10)movhoz=ismove*ospeed;$(13_10)movver+=ogravity;$(13_10)//JUMP CONLISION________________________________________________$(13_10)if (place_meeting(x,y+1,oWall))&&(jump) movver-=15;$(13_10)//GRAVITY CONLISION_____________________________________________$(13_10)if (place_meeting(x+movhoz,y,oWall))$(13_10){ $(13_10)	while (!place_meeting(x+sign(movhoz),y,oWall)) x+=sign(movhoz);$(13_10)	movhoz=0;$(13_10)}$(13_10)if (place_meeting(x,y+movver,oWall))$(13_10){$(13_10)	while (!place_meeting(x,y+sign(movver),oWall)) y+=sign(movver);$(13_10)	movver=0;$(13_10)}$(13_10)//JUMPHIGH PHYSICY______________________________________________$(13_10)if movver>20 jumphigh=max(jumphigh,movver);$(13_10)if jumphigh&&place_meeting(x,y+1,oWall){ hp-=(jumphigh*1.5);audio_play_sound(sHurt,5,false);flash=3;jumphigh=0;}$(13_10)//POSITION______________________________________________________$(13_10)x+=movhoz; y+=movver;$(13_10)//DIE CONLISION_________________________________________________$(13_10)if (place_meeting(x,y,oBorder))||(hp<=0) die=1;$(13_10)$(13_10)//ANIMATION_____________________________________________________$(13_10)if left sprite_index=mainCharacterL;  $(13_10)else if right sprite_index=mainCharacterR;  $(13_10)else if (jump)&&(!(place_meeting(x+5,y,oWall)))$(13_10)&&(!(place_meeting(x-5,y,oWall))) sprite_index=mainCharacter;$(13_10)$(13_10)if movhoz<>0 image_speed=1.5 else image_speed=0;$(13_10)"
if (showVirtualKey==1){




showVirtualKey=0;
}

left= keyboard_check(vk_left)||keyboard_check(ord("A"));
right= keyboard_check(vk_right)||keyboard_check(ord("D"));
jump= keyboard_check(vk_space)||keyboard_check(vk_up)||keyboard_check(ord("W"));
//SPEED_________________________________________________________
ismove=right-left;
movhoz=ismove*ospeed;
movver+=ogravity;
//JUMP CONLISION________________________________________________
if (place_meeting(x,y+1,oWall))&&(jump) movver-=15;
//GRAVITY CONLISION_____________________________________________
if (place_meeting(x+movhoz,y,oWall))
{ 
	while (!place_meeting(x+sign(movhoz),y,oWall)) x+=sign(movhoz);
	movhoz=0;
}
if (place_meeting(x,y+movver,oWall))
{
	while (!place_meeting(x,y+sign(movver),oWall)) y+=sign(movver);
	movver=0;
}
//JUMPHIGH PHYSICY______________________________________________
if movver>20 jumphigh=max(jumphigh,movver);
if jumphigh&&place_meeting(x,y+1,oWall){ hp-=(jumphigh*1.5);audio_play_sound(sHurt,5,false);flash=3;jumphigh=0;}
//POSITION______________________________________________________
x+=movhoz; y+=movver;
//DIE CONLISION_________________________________________________
if (place_meeting(x,y,oBorder))||(hp<=0) die=1;

//ANIMATION_____________________________________________________
if left sprite_index=mainCharacterL;  
else if right sprite_index=mainCharacterR;  
else if (jump)&&(!(place_meeting(x+5,y,oWall)))
&&(!(place_meeting(x-5,y,oWall))) sprite_index=mainCharacter;

if movhoz<>0 image_speed=1.5 else image_speed=0;