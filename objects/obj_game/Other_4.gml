/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 722A8C86
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_game"
if(room == rm_game)
{
	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
	/// @DnDVersion : 1
	/// @DnDHash : 63CE1352
	/// @DnDParent : 722A8C86
	/// @DnDArgument : "soundid" "Naruto___Naruto_s_Theme_song"
	/// @DnDSaveInfo : "soundid" "14e54107-2cd6-4dc8-b895-87b50178cb6c"
	var l63CE1352_0 = Naruto___Naruto_s_Theme_song;
	if (audio_is_playing(l63CE1352_0))
	{
		/// @DnDAction : YoYo Games.Audio.Stop_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 185A929B
		/// @DnDParent : 63CE1352
		/// @DnDArgument : "soundid" "Naruto___Naruto_s_Theme_song"
		/// @DnDSaveInfo : "soundid" "14e54107-2cd6-4dc8-b895-87b50178cb6c"
		audio_stop_sound(Naruto___Naruto_s_Theme_song);
	}

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 5D0E1C77
	/// @DnDParent : 722A8C86
	/// @DnDArgument : "soundid" "Naruto___Naruto_s_Theme_song"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "14e54107-2cd6-4dc8-b895-87b50178cb6c"
	audio_play_sound(Naruto___Naruto_s_Theme_song, 0, 1);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 2300E7DD
	/// @DnDParent : 722A8C86
	/// @DnDArgument : "steps" "60"
	alarm_set(0, 60);

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 7EA74741
	/// @DnDParent : 722A8C86
	/// @DnDArgument : "times" "6"
	repeat(6)
	{
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 27F1C1E6
		/// @DnDInput : 2
		/// @DnDParent : 7EA74741
		/// @DnDArgument : "var" "choice"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "option_1" "1"
		var choice = choose(0, 1);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 194997CF
		/// @DnDParent : 7EA74741
		/// @DnDArgument : "var" "choice"
		if(choice == 0)
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 581D55A3
			/// @DnDParent : 194997CF
			/// @DnDArgument : "var" "xx"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "max" "room_width*0.3"
			var xx = floor(random_range(0, room_width*0.3 + 1));
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 4E67A773
		/// @DnDParent : 7EA74741
		else
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 6F08A335
			/// @DnDParent : 4E67A773
			/// @DnDArgument : "var" "xx"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "room_width*0.7"
			/// @DnDArgument : "max" "room_width"
			var xx = floor(random_range(room_width*0.7, room_width + 1));
		}
	
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 77A03E15
		/// @DnDInput : 2
		/// @DnDParent : 7EA74741
		/// @DnDArgument : "var" "choice"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "option_1" "1"
		var choice = choose(0, 1);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3C3DC3AA
		/// @DnDParent : 7EA74741
		/// @DnDArgument : "var" "choice"
		if(choice == 0)
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 52AEC9FF
			/// @DnDParent : 3C3DC3AA
			/// @DnDArgument : "var" "yy"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "max" "room_height*0.3"
			var yy = floor(random_range(0, room_height*0.3 + 1));
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 4DA67F4F
		/// @DnDParent : 7EA74741
		else
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 1D61CF54
			/// @DnDParent : 4DA67F4F
			/// @DnDArgument : "var" "yy"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "room_height*0.7"
			/// @DnDArgument : "max" "room_height"
			var yy = floor(random_range(room_height*0.7, room_height + 1));
		}
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5F985131
		/// @DnDParent : 7EA74741
		/// @DnDArgument : "xpos" "xx"
		/// @DnDArgument : "ypos" "yy"
		/// @DnDArgument : "objectid" "obj_asteroid"
		/// @DnDSaveInfo : "objectid" "0f93b05e-9d6a-458c-9ea4-6e86dfa7d80a"
		instance_create_layer(xx, yy, "Instances", obj_asteroid);
	}
}