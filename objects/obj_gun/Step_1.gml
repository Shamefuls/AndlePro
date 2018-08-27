scr_inputs();

var _ObjectType = ObjectType

x = obj_player.x+7;
y = obj_player.y;


///==============================makes gun follow cursor
if (!gamepad_is_connected(dvc))
	{
		rmx = mouse_x;
		rmy = mouse_y;
		obj_gun.image_angle = point_direction(x,y,rmx,rmy)
	}
//===============================makes gun follow right stick
else
{
	gamepad_set_axis_deadzone(dvc,0.3)
	rmx = gamepad_axis_value(dvc,gp_axisrh);
	rmy = gamepad_axis_value(dvc,gp_axisrv);
	if (rmx !=0 || rmy !=0)
	{
	obj_gun.image_angle = point_direction(0,0,rmx,rmy);
	}
}




firingdelay = firingdelay -1
recoil = max(0,recoil -1);

if(act_aim)
if(act_shoot) && (firingdelay <0)
{
	recoil = 2
	firingdelay = 5;
	with (instance_create_layer(xoffset,yoffset,"Bullet",obj_bullet))
	{
		speed = 5;		
		direction = obj_gun.image_angle;/// + random_range (-2,2);
		image_angle= direction;
		Creator = _ObjectType
	}
}

//x = x - lengthdir_x(recoil,obj_gun.image_angle);
//y = y - lengthdir_y(recoil,obj_gun.image_angle);

if (!gamepad_is_connected(dvc))
	{
	switch ((((obj_gun.image_angle + 22.5) mod 360) + 360) mod 360) div 45 
		{
			case 0: 
				//east 
				x = (obj_player.x +7);
				y = obj_player.y;
				xoffset = (obj_gun.x +8);
				yoffset = obj_gun.y;
				layer = layer_get_id("playergunNE"); 
				break; //east
			case 1: 
				//northeast
				x = (obj_player.x - 7);
				y = (obj_player.y - 4);
				xoffset = obj_gun.x;
				yoffset = (obj_gun.y -6);
				layer = layer_get_id("playergunNE");
				break; //northeast
			case 2: 
				//north 
				x = (obj_player.x - 8);
				y = (obj_player.y -6);
				xoffset = obj_gun.x;
				yoffset = (obj_gun.y -6);
				layer = layer_get_id("playergunNE");
				break; //north
			case 3: 
				//northwest 
				x = (obj_player.x +7);
				y = obj_player.y;
				xoffset = (obj_gun.x +8);
				yoffset = obj_gun.y;
				layer = layer_get_id("playergunNE"); 
				break; //northwest
			case 4: 
				//west
				x = (obj_player.x + 8);
				y = (obj_player.y - 2);
				xoffset = (obj_gun.x -16);
				yoffset = obj_gun.y;
				layer = layer_get_id("playergunSW");
				break; //west
			case 5: 
				//west
				x = (obj_player.x + 8);
				y = (obj_player.y - 2);
				xoffset = (obj_gun.x -16);
				yoffset = obj_gun.y;
				layer = layer_get_id("playergunSW");
				break; //southwest
			case 6: 
				//south 
				x = (obj_player.x + 9);
				y = obj_player.y;
				xoffset = obj_gun.x;
				yoffset = (obj_gun.y +16);
				layer = layer_get_id("playergunSW");
				break; //south
			case 7:
				//east 
				x = (obj_player.x +7);
				y = obj_player.y;
				xoffset = (obj_gun.x +8);
				yoffset = obj_gun.y;
				layer = layer_get_id("playergunNE");
				break; //southeast
		}
	}

if (gamepad_is_connected(dvc))
	{
		//if (rmx !=0 || rmy !=0)
		//{
		switch ((((obj_gun.image_angle + 22.5) mod 360) + 360) mod 360) div 45 
			{
			case 0: 
				//east 
				x = (obj_player.x +7);
				y = obj_player.y;
				xoffset = (obj_gun.x +8);
				yoffset = (obj_gun.y -2);
				layer = layer_get_id("playergunNE"); 
				break; //east
			case 1: 
				//northeast
				x = (obj_player.x - 8);
				y = (obj_player.y -6);
				xoffset = obj_gun.x;
				yoffset = (obj_gun.y -6);
				layer = layer_get_id("playergunNE");
				break; //northeast
			case 2: 
				//north 
				x = (obj_player.x - 8);
				y = (obj_player.y -6);
				xoffset = obj_gun.x;
				yoffset = (obj_gun.y -6);
				layer = layer_get_id("playergunNE");
				break; //north
			case 3: 
				//northwest 
				x = (obj_player.x -7);
				y = obj_player.y;
				xoffset = (obj_gun.x +8);
				yoffset = obj_gun.y;
				layer = layer_get_id("playergunNE"); 
				break; //northwest
			case 4: 
				//west
				x = (obj_player.x + 8);
				y = (obj_player.y - 2);
				xoffset = (obj_gun.x -16);
				yoffset = obj_gun.y;
				layer = layer_get_id("playergunSW");
				break; //west
			case 5: 
				//west 
				x = (obj_player.x + 8);
				y = (obj_player.y - 2);
				xoffset = (obj_gun.x -16);
				yoffset = obj_gun.y;
				layer = layer_get_id("playergunSW");
				break; //southwest
			case 6: 
				//south 
				x = (obj_player.x + 8);
				y = obj_player.y;
				xoffset = obj_gun.x;
				yoffset = (obj_gun.y +16);
				layer = layer_get_id("playergunSW");
				break; //south
			case 7:
				//east
				x = (obj_player.x +7);
				y = obj_player.y;
				xoffset = (obj_gun.x +8);
				yoffset = (obj_gun.y -2);
				layer = layer_get_id("playergunNE");
				break; //southeast
			//}
		}
	}
if (obj_gun.image_angle>90) && (obj_gun.image_angle<270)
	{
		image_yscale = -1
	}
else
	{
		image_yscale = 1;
	}