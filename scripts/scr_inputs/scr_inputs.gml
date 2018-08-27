//device
dvc = 0
//movement
if (!gamepad_is_connected(dvc))
{
move_up = keyboard_check(ord("W"));
move_down = keyboard_check(ord("S"));
move_left = keyboard_check(ord("A"));
move_right = keyboard_check(ord("D"));
//Actions
act_sprint = keyboard_check(vk_lshift);
act_interact = keyboard_check(ord("E"));
act_stance = keyboard_check(ord("C"));
act_thrust = keyboard_check(ord("Q"));
act_swing = keyboard_check(vk_space);
act_seppuku = keyboard_check(ord("Y"));
act_aim = mouse_check_button(mb_right);
act_shoot = mouse_check_button_pressed(mb_left);
act_reload = keyboard_check(ord("R"));
///act_heal = 
///act_dodge/dive = keyboard_check(ord("F")) || gamepad_button_check(dvc,gp_face2);
///act_Aitem1 = keyboard_check(ord("Z")) || gamepad_button_check(dvc,gp_padl);
///act_Aitem2 = keyboard_check(ord("x")) || gamepad_button_check(dvc,gp_padr);

//GUIs
gui_options = keyboard_check(vk_escape);
gui_menus = keyboard_check(vk_tab);

xaxis = (move_right - move_left);
yaxis = (move_down - move_up);
}

if(gamepad_is_connected(dvc))
{
	gamepad_set_axis_deadzone(dvc,0.3);
	xaxis = gamepad_axis_value(dvc,gp_axislh)
	yaxis = gamepad_axis_value(dvc,gp_axislv)

	//Actions
	act_sprint = gamepad_button_check(dvc,gp_face2);
	act_dodge = gamepad_button_check_pressed(dvc,gp_face2);
	act_interact = gamepad_button_check(dvc,gp_face3);
	act_stance = gamepad_button_check(dvc,gp_stickr);
	act_thrust = gamepad_button_check_pressed(dvc,gp_face1);
	act_swing = gamepad_button_check_pressed(dvc,gp_shoulderr);
	act_seppuku = gamepad_button_check(dvc,gp_select);
	act_aim = gamepad_button_check(dvc,gp_shoulderlb);
	act_shoot = gamepad_button_check_pressed(dvc,gp_shoulderrb);
	act_reload = gamepad_button_check(dvc,gp_face4);
	///act_heal = 
///act_dodge/dive = keyboard_check(ord("F")) || gamepad_button_check(dvc,gp_face2);
///act_Aitem1 = keyboard_check(ord("Z")) || gamepad_button_check(dvc,gp_padl);
///act_Aitem2 = keyboard_check(ord("x")) || gamepad_button_check(dvc,gp_padr);

	//GUI
	gui_options = gamepad_button_check(dvc,gp_start);
	gui_menus = gamepad_button_check(dvc,gp_padu);
}