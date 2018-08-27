scr_check_for_target();
if(instance_exists(target))
{
	var _targetx = sign(targetx - x)*spd;
	var _targety = sign(targety - y)*spd;
	var dis = point_distance(x,y,target.x,target.y)
	
	scr_enemysprite(_targetx,_targety);
	
	if (dis < attackdis) 
		{
		state = scr_enemy_attack;
		}
	if (dis > sight)
		{
		state = scr_enemy_hunt;
		}
}