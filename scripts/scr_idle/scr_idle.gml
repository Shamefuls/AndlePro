scr_inputs();

dir = point_direction(0,0,xaxis,yaxis);
len = point_distance(0,0,xaxis,yaxis) * spd;
	
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
if (!act_aim)
	if (hspd !=0 || vspd !=0)
	{
		switch ((((dir + 22.5) mod 360) + 360) mod 360) div 45 {
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
if (act_aim) 
{
	switch (action)
	{
		case action.idle: action = action.idleshoot; state= scr_shoot; break;
		case action.walk: action = action.walkingshoot; state= scr_shoot; break;
		case action.jog: action = action.joggingshoot; state= scr_shoot; break;
		//case action.sprint: action = action.sprintingshoot; state= scr_shoot; break;
	}
}
if (act_swing) 
{
	switch (action)	
	{
		case action.idle: action = action.idle; state= scr_swing; break;
		case action.walk: action = action.walk; state= scr_swing; break;
		case action.jog: action = action.jog; state= scr_swing; break;
		//case action.sprint: action = action.sprintingshoot; state= scr_shoot; break;
	}
}
if (act_thrust)
{
	switch (action)
	{
		case action.idle: action = action.idlethrust; state= scr_thrust; break;
		case action.walk: action = action.walkingthrust; state= scr_thrust; break;
		case action.jog: action = action.joggingthrust; state= scr_thrust; break;
		//case action.sprint: action = action.sprintingshoot; state= scr_shoot; break;
	}
}
scr_movementcollide(hspd,vspd,obj_collision);