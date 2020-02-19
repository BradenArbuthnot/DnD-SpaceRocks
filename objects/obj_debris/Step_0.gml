/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 50DF3F0E
/// @DnDArgument : "expr" "0.01"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "image_alpha"
image_alpha += 0.01;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 70880261
/// @DnDArgument : "var" "image_alpha"
/// @DnDArgument : "op" "3"
if(image_alpha <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5ACE2226
	/// @DnDParent : 70880261
	instance_destroy();
}