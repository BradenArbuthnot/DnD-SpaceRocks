/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 5A1BC40A
/// @DnDApplyTo : ccffc86e-9855-4fbc-9aec-0e3ed93a7e4c
with(obj_game) {
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 666A4E6F
	/// @DnDParent : 5A1BC40A
	/// @DnDArgument : "score" "10"
	/// @DnDArgument : "score_relative" "1"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(10);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 4C83E412
instance_destroy();

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 4F1911C2
/// @DnDApplyTo : other
with(other) {
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7460D336
	/// @DnDParent : 4F1911C2
	instance_destroy();

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5DEFD4B0
	/// @DnDParent : 4F1911C2
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "spr_huge"
	if(sprite_index == spr_huge)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 5C6F0FF3
		/// @DnDParent : 5DEFD4B0
		/// @DnDArgument : "times" "2"
		repeat(2)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 4110A7E4
			/// @DnDParent : 5C6F0FF3
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_asteroid"
			/// @DnDSaveInfo : "objectid" "eaabd80f-995e-42e1-aff0-d6cfc34a63a4"
			instance_create_layer(x + 0, y + 0, "Instances", obj_asteroid);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 45DFAA89
			/// @DnDParent : 5C6F0FF3
			/// @DnDArgument : "expr" "spr_med"
			/// @DnDArgument : "var" "newAsteroid.sprite_index"
			newAsteroid.sprite_index = spr_med;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6A7031C4
	/// @DnDParent : 4F1911C2
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "spr_med"
	if(sprite_index == spr_med)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 3BD98EAC
		/// @DnDParent : 6A7031C4
		/// @DnDArgument : "times" "2"
		repeat(2)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 487BDBBA
			/// @DnDParent : 3BD98EAC
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newAsteroid"
			/// @DnDArgument : "objectid" "obj_asteroid"
			/// @DnDSaveInfo : "objectid" "eaabd80f-995e-42e1-aff0-d6cfc34a63a4"
			newAsteroid = instance_create_layer(x + 0, y + 0, "Instances", obj_asteroid);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2A597E67
			/// @DnDParent : 3BD98EAC
			/// @DnDArgument : "expr" "spr_smol"
			/// @DnDArgument : "var" "newAsteroid.sprite_index"
			newAsteroid.sprite_index = spr_smol;
		}
	}

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 2704DB9B
	/// @DnDParent : 4F1911C2
	/// @DnDArgument : "times" "10"
	repeat(10)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 01341740
		/// @DnDParent : 2704DB9B
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_debris"
		/// @DnDSaveInfo : "objectid" "ba98fa86-c55f-4290-9b73-aa985cff0378"
		instance_create_layer(x + 0, y + 0, "Instances", obj_debris);
	}
}