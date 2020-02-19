/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 08428B6E
/// @DnDArgument : "soundid" "snd_hurt"
/// @DnDSaveInfo : "soundid" "a9ea1a72-c39c-400b-8e80-b10dfef431e9"
audio_play_sound(snd_hurt, 0, 0);

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 47AF735A
/// @DnDApplyTo : b2bd480d-9f32-4dbc-ba26-f0d3967e3b18
with(obj_game) {
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 5E0F844E
	/// @DnDParent : 47AF735A
	/// @DnDArgument : "score" "10"
	/// @DnDArgument : "score_relative" "1"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(10);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 16FDA2C1
instance_destroy();

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 47A22EF3
/// @DnDApplyTo : other
with(other) {
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 06D190A0
	/// @DnDParent : 47A22EF3
	instance_destroy();

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 12C06887
	/// @DnDParent : 47A22EF3
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "spr_asteroid_large"
	if(sprite_index == spr_asteroid_large)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 37667D12
		/// @DnDParent : 12C06887
		/// @DnDArgument : "times" "2"
		repeat(2)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 2E71E48E
			/// @DnDParent : 37667D12
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newAsteroid"
			/// @DnDArgument : "objectid" "obj_asteroid"
			/// @DnDSaveInfo : "objectid" "0f93b05e-9d6a-458c-9ea4-6e86dfa7d80a"
			newAsteroid = instance_create_layer(x + 0, y + 0, "Instances", obj_asteroid);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 071388CC
			/// @DnDParent : 37667D12
			/// @DnDArgument : "expr" "spr_asteroid_med"
			/// @DnDArgument : "var" "newAsteroid.sprite_index"
			newAsteroid.sprite_index = spr_asteroid_med;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 03F603E3
	/// @DnDParent : 47A22EF3
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "spr_asteroid_med"
	if(sprite_index == spr_asteroid_med)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 0DB6C995
		/// @DnDParent : 03F603E3
		/// @DnDArgument : "times" "2"
		repeat(2)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 69FAA7C1
			/// @DnDParent : 0DB6C995
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newAsteroid"
			/// @DnDArgument : "objectid" "obj_asteroid"
			/// @DnDSaveInfo : "objectid" "0f93b05e-9d6a-458c-9ea4-6e86dfa7d80a"
			newAsteroid = instance_create_layer(x + 0, y + 0, "Instances", obj_asteroid);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1C6ACDCD
			/// @DnDParent : 0DB6C995
			/// @DnDArgument : "expr" "spr_asteroid_small"
			/// @DnDArgument : "var" "newAsteroid.sprite_index"
			newAsteroid.sprite_index = spr_asteroid_small;
		}
	}

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 29F7955B
	/// @DnDParent : 47A22EF3
	/// @DnDArgument : "times" "10"
	repeat(10)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 50DE5DF5
		/// @DnDParent : 29F7955B
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_debris"
		/// @DnDSaveInfo : "objectid" "a8639167-a202-4a65-ba83-a88a026e39c9"
		instance_create_layer(x + 0, y + 0, "Instances", obj_debris);
	}
}