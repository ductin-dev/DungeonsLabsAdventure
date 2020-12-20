/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 78B6EA73
/// @DnDArgument : "soundid" "sSelect"
/// @DnDSaveInfo : "soundid" "4342110f-f0b2-4e9a-904a-ecff8d3786bf"
audio_play_sound(sSelect, 0, 0);

/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 6FE609EA
/// @DnDArgument : "colour" "$FFCCCCCC"
image_blend = $FFCCCCCC & $ffffff;
image_alpha = ($FFCCCCCC >> 24) / $ff;