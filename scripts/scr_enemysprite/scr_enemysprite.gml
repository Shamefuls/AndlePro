var _targetx = argument[0];
var _targety = argument[1];

dir = point_direction(0,0,_targetx,_targety);
len = point_distance(0,0,_targetx,_targety);

hspd = lengthdir_x(len,dir);
vspd = lengthdir_y(len,dir);
if (hspd != 0 && vspd !=0) 
	hspd = hspd*0.7071;
	vspd = vspd*0.7071;
//=========================================================
// Movement states. I wish I could condense this somehow...
//=========================================================
if (hspd == 0) && (vspd == 0)
	action = action.idle;
if (hspd > 0) && (hspd < 1.4)|| (vspd > 0) && (vspd < 1.4)
	action = action.walk;
if (hspd < 0) && (hspd > -1.4)|| (vspd < 0) && (vspd > -1.4)
	action = action.walk;
if (hspd > 1.5) || (vspd > 1.5)
	action = action.jog;
if (hspd < -1.5) || (vspd < -1.5)
	action = action.jog;
//========================================================
// Directional states.
//========================================================
//if (!act_aim)
	if (hspd !=0 || vspd !=0)
	{
		switch ((((dir + 22.5) mod 360) + 360) mod 360) div 45 
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
	
//=============================================
// Attack states.
//=============================================

scr_movementcollide(hspd,vspd,obj_collision);