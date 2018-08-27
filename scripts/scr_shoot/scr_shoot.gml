scr_inputs();


if(!instance_exists(obj_gun))
{
		with (instance_create_layer(obj_player.x,obj_player.y,"playergunNE",obj_gun))
		{
			switch (obj_player.direct)
				{
				case direct.east: obj_gun.initdir = 0;
				case direct.northeast: obj_gun.initdir = 45;
				case direct.north: obj_gun.initdir = 90;
				case direct.northwest: obj_gun.initdir = 135;
				case direct.west: obj_gun.initdir = 180;
				case direct.south: obj_gun.initdir = 270;
				}
		}
}

if (!gamepad_is_connected(dvc))
{
	mx=mouse_x;
	my=mouse_y;
	switch ((((point_direction(x,y,mx,my) + 22.5) mod 360) + 360) mod 360) div 45
	{
	case 0: direct = direct.east; break; //west
	case 1: direct = direct.northeast; break; //northwest
	case 2: direct = direct.north; break; //north
	case 3: direct = direct.northwest; break; //northeast
	case 4: direct = direct.west; break; //east
	case 5: direct = direct.west; break; //southeast
	case 6: direct = direct.south; break; //south
	case 7: direct = direct.east; break; //southwest
	}
}

if (gamepad_is_connected(dvc))
{
gamepad_set_axis_deadzone(dvc,0.3);
mx = gamepad_axis_value(dvc,gp_axisrh);
my = gamepad_axis_value(dvc,gp_axisrv);

	if (mx !=0 || my !=0)
	{
		switch ((((point_direction(0,0,mx,my) + 22.5) mod 360) + 360) mod 360) div 45
		{
		case 0: direct = direct.east; break; //west
		case 1: direct = direct.northeast; break; //northwest
		case 2: direct = direct.north; break; //north
		case 3: direct = direct.northwest; break; //northeast
		case 4: direct = direct.west; break; //east
		case 5: direct = direct.west; break; //southeast
		case 6: direct = direct.south; break; //south
		case 7: direct = direct.east; break; //southwest
		}
	}
}

state = scr_idle;