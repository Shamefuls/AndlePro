
if (instance_exists(target))
	{
	var dis = point_distance(x,y,target.x,target.y)
	if (dis < sight) 
		{
		state = scr_enemy_chase
		targetx = target.x;
		targety= target.y;
		}
		else
			{scr_enemy_state_chooser();}
	}
else
	{scr_enemy_state_chooser();}