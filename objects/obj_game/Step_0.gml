/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 27D5632A
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_game"
if(room == rm_game)
{
	/// @DnDAction : YoYo Games.Instance Variables.If_Score
	/// @DnDVersion : 1
	/// @DnDHash : 6D8839EE
	/// @DnDParent : 27D5632A
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1000"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	if(__dnd_score >= 1000)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 6B4984F9
		/// @DnDParent : 6D8839EE
		/// @DnDArgument : "soundid" "snd_win"
		/// @DnDSaveInfo : "soundid" "7ba1f46a-ed44-48bb-b1b1-4c0b1a5161d5"
		audio_play_sound(snd_win, 0, 0);
	
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 21E60F1C
		/// @DnDParent : 6D8839EE
		/// @DnDArgument : "room" "rm_win"
		/// @DnDSaveInfo : "room" "4eb4ae9c-4ec1-4531-b826-dedb1e656514"
		room_goto(rm_win);
	}

	/// @DnDAction : YoYo Games.Instance Variables.If_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 63B99652
	/// @DnDParent : 27D5632A
	/// @DnDArgument : "op" "3"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	if(__dnd_lives <= 0)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 4D57B913
		/// @DnDParent : 63B99652
		/// @DnDArgument : "room" "rm_gameover"
		/// @DnDSaveInfo : "room" "ebb05a69-f27a-4a00-ace2-d188917c920b"
		room_goto(rm_gameover);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 6E4606B5
		/// @DnDParent : 63B99652
		/// @DnDArgument : "soundid" "snd_lose"
		/// @DnDSaveInfo : "soundid" "1f058f31-1be2-4178-8349-65928a0cf89b"
		audio_play_sound(snd_lose, 0, 0);
	}
}