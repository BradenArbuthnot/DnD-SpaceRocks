/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 37CEE0BE
/// @DnDArgument : "expr" "room"
var l37CEE0BE_0 = room;
switch(l37CEE0BE_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 125E3C86
	/// @DnDParent : 37CEE0BE
	/// @DnDArgument : "const" "rm_start"
	case rm_start:
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 600C9323
		/// @DnDParent : 125E3C86
		/// @DnDArgument : "room" "rm_game"
		/// @DnDSaveInfo : "room" "f13470bd-bcb0-4254-8256-d029e101c786"
		room_goto(rm_game);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2EAD5052
	/// @DnDParent : 37CEE0BE
	/// @DnDArgument : "const" "rm_gameover"
	case rm_gameover:
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 3452225F
		/// @DnDParent : 2EAD5052
		game_restart();
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 71E634F9
	/// @DnDParent : 37CEE0BE
	/// @DnDArgument : "const" "rm_win"
	case rm_win:
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 7FB47F63
		/// @DnDParent : 71E634F9
		game_restart();
		break;
}