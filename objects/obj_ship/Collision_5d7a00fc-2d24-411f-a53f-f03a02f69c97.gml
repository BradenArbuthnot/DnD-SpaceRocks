/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 3A6310CB
/// @DnDArgument : "soundid" "snd_die"
/// @DnDSaveInfo : "soundid" "32d91441-dc1a-439d-a261-3ff3967b5e59"
audio_play_sound(snd_die, 0, 0);

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 6AC22949
/// @DnDApplyTo : b2bd480d-9f32-4dbc-ba26-f0d3967e3b18
with(obj_game) {
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 5A505213
	/// @DnDParent : 6AC22949
	/// @DnDArgument : "steps" "60"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, 60);
}

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 4DB26BCE
/// @DnDApplyTo : b2bd480d-9f32-4dbc-ba26-f0d3967e3b18
with(obj_game) {
	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 45AFD7DA
	/// @DnDParent : 4DB26BCE
	/// @DnDArgument : "lives" "-1"
	/// @DnDArgument : "lives_relative" "1"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	__dnd_lives += real(-1);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 16C19370
instance_destroy();

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 6F9D935B
/// @DnDArgument : "times" "10"
repeat(10)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2B9D9261
	/// @DnDParent : 6F9D935B
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_debris"
	/// @DnDSaveInfo : "objectid" "a8639167-a202-4a65-ba83-a88a026e39c9"
	instance_create_layer(x + 0, y + 0, "Instances", obj_debris);
}