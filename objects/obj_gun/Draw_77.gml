/// @description Insert description here
// You can write your code in this editor
scr_inputs();
if (gamepad_is_connected(dvc))
{
	if (gamepad_button_check_released(dvc,gp_shoulderlb)) 
		instance_destroy(obj_gun);
}
if (!gamepad_is_connected(dvc))
{
	if (mouse_check_button_released(mb_right)) 
		instance_destroy(obj_gun);
}