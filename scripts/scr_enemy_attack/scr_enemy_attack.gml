var dis = point_distance(x,y,target.x,target.y)
var _Creator = ObjectType
//===============================================
//if (dis > attackdis)
	//{
	//state = scr_enemy_hunt;
	//}
//else
	//{
	//state = scr_enemyidle;
	//}
//===============================================
switch (direct)
{
	case direct.north:
		with (instance_create_layer(self.x,self.y,"playergunNE",eff_swingN))
			{Creator = _Creator}; 
		break;
	case direct.south: 
		with (instance_create_layer(self.x,self.y,"playergunSW",eff_swingS))
			{Creator = _Creator}; ; 
		break;
	case direct.east: 
		with (instance_create_layer(self.x,self.y,"playergunNE",eff_swingE))
			{Creator = _Creator}; ; 
		break;
	case direct.west: 
		with (instance_create_layer(self.x,self.y,"playergunSW",eff_swingW))
			{Creator = _Creator}; 
		break;
	case direct.northeast:
		with (instance_create_layer(self.x,self.y,"playergunNE",eff_swingN))
			{Creator = _Creator};
		break;
	case direct.northwest: 
		with (instance_create_layer(self.x,self.y,"playergunNE",eff_swingN))
			{Creator = _Creator}; 
		break;
}
state = scr_enemyidle;