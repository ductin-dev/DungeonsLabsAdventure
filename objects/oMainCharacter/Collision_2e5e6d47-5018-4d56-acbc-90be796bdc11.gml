/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2C058139
/// @DnDArgument : "code" "if (instance_exists(oNormalGun)) oNormalGun.active=0;$(13_10)if (instance_exists(oHeavyGun)) oHeavyGun.active=0;$(13_10)$(13_10)with (other){$(13_10)	active=1;$(13_10)	destroy=1; $(13_10)} "
if (instance_exists(oNormalGun)) oNormalGun.active=0;
if (instance_exists(oHeavyGun)) oHeavyGun.active=0;

with (other){
	active=1;
	destroy=1; 
}