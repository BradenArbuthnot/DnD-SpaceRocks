/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 5F0A3DE4
/// @DnDArgument : "expr" "room"
var l5F0A3DE4_0 = room;
switch(l5F0A3DE4_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 7D3343B3
	/// @DnDParent : 5F0A3DE4
	/// @DnDArgument : "const" "rm_game"
	case rm_game:
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 42790900
		/// @DnDParent : 7D3343B3
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "20"
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(20, 20, string("Score: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
		/// @DnDVersion : 1
		/// @DnDHash : 2AC71861
		/// @DnDParent : 7D3343B3
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "40"
		/// @DnDArgument : "sprite" "spr_lives"
		/// @DnDSaveInfo : "sprite" "fd1bba11-9cb2-4bae-8c3d-bb3c1e014e9e"
		var l2AC71861_0 = sprite_get_width(spr_lives);
		var l2AC71861_1 = 0;
		if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
		for(var l2AC71861_2 = __dnd_lives; l2AC71861_2 > 0; --l2AC71861_2) {
			draw_sprite(spr_lives, 0, 20 + l2AC71861_1, 40);
			l2AC71861_1 += l2AC71861_0;
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 6A7875F1
	/// @DnDParent : 5F0A3DE4
	/// @DnDArgument : "const" "rm_start"
	case rm_start:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 3FA50877
		/// @DnDParent : 6A7875F1
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 5FC5B8F5
		/// @DnDParent : 6A7875F1
		/// @DnDArgument : "color" "$FFFF9D0A"
		draw_set_colour($FFFF9D0A & $ffffff);
		var l5FC5B8F5_0=($FFFF9D0A >> 24);
		draw_set_alpha(l5FC5B8F5_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 49181427
		/// @DnDParent : 6A7875F1
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "100"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""SPACE ROCKS""
		draw_text_transformed(250, 100, string("SPACE ROCKS") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 6B328D8D
		/// @DnDParent : 6A7875F1
		/// @DnDArgument : "color" "$FF45FF02"
		draw_set_colour($FF45FF02 & $ffffff);
		var l6B328D8D_0=($FF45FF02 >> 24);
		draw_set_alpha(l6B328D8D_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 5F29DCD4
		/// @DnDParent : 6A7875F1
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "200"
		/// @DnDArgument : "caption" ""Score 1,000 points to win!""
		draw_text(250, 200, string("Score 1,000 points to win!") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 091AFDA8
		/// @DnDParent : 6A7875F1
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "230"
		/// @DnDArgument : "caption" ""Move with UP/RIGHT/LEFT keys ""
		draw_text(250, 230, string("Move with UP/RIGHT/LEFT keys ") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 79AC4A6D
		/// @DnDParent : 6A7875F1
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "260"
		/// @DnDArgument : "caption" ""Press SPACE to shoot""
		draw_text(250, 260, string("Press SPACE to shoot") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 5731DF2D
		/// @DnDParent : 6A7875F1
		/// @DnDArgument : "color" "$FF2DFFF4"
		draw_set_colour($FF2DFFF4 & $ffffff);
		var l5731DF2D_0=($FF2DFFF4 >> 24);
		draw_set_alpha(l5731DF2D_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 7A1E8E19
		/// @DnDParent : 6A7875F1
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "350"
		/// @DnDArgument : "caption" "">> PRESS ENTER TO START <<""
		draw_text(250, 350, string(">> PRESS ENTER TO START <<") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 2D7A69ED
		/// @DnDParent : 6A7875F1
		draw_set_colour($FFFFFFFF & $ffffff);
		var l2D7A69ED_0=($FFFFFFFF >> 24);
		draw_set_alpha(l2D7A69ED_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 28E6D3B3
		/// @DnDParent : 6A7875F1
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 25AE3AE4
	/// @DnDParent : 5F0A3DE4
	/// @DnDArgument : "const" "rm_gameover"
	case rm_gameover:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 6E2F963C
		/// @DnDParent : 25AE3AE4
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 5C750ACA
		/// @DnDParent : 25AE3AE4
		/// @DnDArgument : "color" "$FF0000FF"
		draw_set_colour($FF0000FF & $ffffff);
		var l5C750ACA_0=($FF0000FF >> 24);
		draw_set_alpha(l5C750ACA_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 26D783F4
		/// @DnDParent : 25AE3AE4
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "150"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""YOU LOSE""
		draw_text_transformed(250, 150, string("YOU LOSE") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 29EDBB81
		/// @DnDParent : 25AE3AE4
		/// @DnDArgument : "color" "$FF23FFFB"
		draw_set_colour($FF23FFFB & $ffffff);
		var l29EDBB81_0=($FF23FFFB >> 24);
		draw_set_alpha(l29EDBB81_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 1D164EB8
		/// @DnDParent : 25AE3AE4
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "250"
		/// @DnDArgument : "caption" ""FINAL SCORE: ""
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(250, 250, string("FINAL SCORE: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 3BC981B8
		/// @DnDParent : 25AE3AE4
		/// @DnDArgument : "color" "$FF23FFFB"
		draw_set_colour($FF23FFFB & $ffffff);
		var l3BC981B8_0=($FF23FFFB >> 24);
		draw_set_alpha(l3BC981B8_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 015C1A52
		/// @DnDParent : 25AE3AE4
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "300"
		/// @DnDArgument : "caption" "">> PRESS ENTER TO RESTART <<""
		draw_text(250, 300, string(">> PRESS ENTER TO RESTART <<") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 724D4F63
		/// @DnDParent : 25AE3AE4
		draw_set_colour($FFFFFFFF & $ffffff);
		var l724D4F63_0=($FFFFFFFF >> 24);
		draw_set_alpha(l724D4F63_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 01F8A1AF
		/// @DnDParent : 25AE3AE4
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 1D534E99
	/// @DnDParent : 5F0A3DE4
	/// @DnDArgument : "const" "rm_win"
	case rm_win:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 267CAA6C
		/// @DnDParent : 1D534E99
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 14D75007
		/// @DnDParent : 1D534E99
		/// @DnDArgument : "color" "$FF04FF00"
		draw_set_colour($FF04FF00 & $ffffff);
		var l14D75007_0=($FF04FF00 >> 24);
		draw_set_alpha(l14D75007_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 108921CC
		/// @DnDParent : 1D534E99
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "150"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""YOU WIN""
		draw_text_transformed(250, 150, string("YOU WIN") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 77CB6C32
		/// @DnDParent : 1D534E99
		/// @DnDArgument : "color" "$FF23FFFB"
		draw_set_colour($FF23FFFB & $ffffff);
		var l77CB6C32_0=($FF23FFFB >> 24);
		draw_set_alpha(l77CB6C32_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 60EE5D29
		/// @DnDParent : 1D534E99
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "250"
		/// @DnDArgument : "caption" ""FINAL SCORE: ""
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(250, 250, string("FINAL SCORE: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 7823418D
		/// @DnDParent : 1D534E99
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "300"
		/// @DnDArgument : "caption" "">> PRESS ENTER TO RESTART <<""
		draw_text(250, 300, string(">> PRESS ENTER TO RESTART <<") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 4D90E540
		/// @DnDParent : 1D534E99
		draw_set_colour($FFFFFFFF & $ffffff);
		var l4D90E540_0=($FFFFFFFF >> 24);
		draw_set_alpha(l4D90E540_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 00E212BA
		/// @DnDParent : 1D534E99
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;
}