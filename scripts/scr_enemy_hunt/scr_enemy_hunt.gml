//scr_enemysprite();
var _path = path_add();
var dis = point_distance(x,y,target.x,target.y)

action = action.jog

mp_potential_path_object(_path,target.x,target.y,2,4,obj_collision);
path_start(_path,2,path_action_stop,true);

switch ((((direction + 22.5) mod 360) + 360) mod 360) div 45 
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

if (dis < sight/2)
{
	state = scr_enemy_chase;
}
if (dis > sight*2)
{
	state = scr_enemyidle;
}
