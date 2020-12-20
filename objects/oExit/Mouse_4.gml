/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 643207F3
/// @DnDArgument : "colour" "$FF65AAFF"
image_blend = $FF65AAFF & $ffffff;
image_alpha = ($FF65AAFF >> 24) / $ff;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 4CCBA557
/// @DnDArgument : "soundid" "sClick"
/// @DnDSaveInfo : "soundid" "485202f2-787f-42af-8d07-9cc64d704f94"
audio_play_sound(sClick, 0, 0);

/// @DnDAction : YoYo Games.Game.End_Game
/// @DnDVersion : 1
/// @DnDHash : 6F6E3830
game_end();