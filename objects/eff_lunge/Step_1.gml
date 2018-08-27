/// @description Insert description here
// You can write your code in this editor
scr_inputs();
x = obj_player.x;
y = obj_player.y;


gamepad_set_axis_deadzone(dvc,0.3)
rmx = gamepad_axis_value(dvc,gp_axislh);
rmy = gamepad_axis_value(dvc,gp_axislv);

	
eff_lunge.image_angle = point_direction(0,0,rmx,rmy);
	
if (gamepad_is_connected(dvc))
	{
		//if (rmx !=0 || rmy !=0)
		//{
		switch ((((eff_lunge.image_angle + 22.5) mod 360) + 360) mod 360) div 45 
			{
			case 0: 
				//east 
				x = (obj_player.x -7);
				y = obj_player.y;
				//xoffset = (eff_lunge.x +8);
				//yoffset = (eff_lunge.y -2);
				layer = layer_get_id("playergunSW"); 
				break; //east
			case 1: 
				//northeast
				x = (obj_player.x + 8);
				y = (obj_player.y -6);
				//xoffset = eff_lunge.x;
				//yoffset = (eff_lunge.y -6);
				layer = layer_get_id("playergunNE");
				break; //northeast
			case 2: 
				//north 
				x = (obj_player.x + 8);
				y = (obj_player.y -6);
				//xoffset = eff_lunge.x;
				//yoffset = (eff_lunge.y -6);
				layer = layer_get_id("playergunNE");
				break; //north
			case 3: 
				//northwest 
				x = (obj_player.x +7);
				y = obj_player.y;
				//xoffset = (eff_lunge.x +8);
				//yoffset = eff_lunge.y;
				layer = layer_get_id("playergunNE"); 
				break; //northwest
			case 4: 
				//west
				x = (obj_player.x - 8);
				y = obj_player.y;
				//xoffset = (eff_lunge.x -16);
				//yoffset = eff_lunge.y;
				layer = layer_get_id("playergunNE");
				break; //west
			case 5: 
				//west 
				x = (obj_player.x - 8);
				y = obj_player.y;
				//xoffset = (eff_lunge.x -16);
				//yoffset = eff_lunge.y;
				layer = layer_get_id("playergunNE");
				break; //southwest
			case 6: 
				//south 
				x = (obj_player.x - 8);
				y = obj_player.y;
				//xoffset = eff_lunge.x;
				//yoffset = (eff_lunge.y +16);
				layer = layer_get_id("playergunSW");
				break; //south
			case 7:
				//east
				x = (obj_player.x -7);
				y = obj_player.y;
				//xoffset = (eff_lunge.x +8);
				//yoffset = (eff_lunge.y -2);
				layer = layer_get_id("playergunSW");
				break; //southeast
			//}
		}
	}
//instance_create_layer(xoffset,yoffset,"Bullet",obj_bullet)