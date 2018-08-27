scr_inputs();


var _Creator = ObjectType
switch (direct)
{
	case direct.north:
		with (instance_create_layer(obj_player.x,obj_player.y,"playergunNE",eff_swingN))
			{Creator = _Creator}; 
		break;
	case direct.south: 
		with (instance_create_layer(obj_player.x,obj_player.y,"playergunSW",eff_swingS))
			{Creator = _Creator}; ; 
		break;
	case direct.east: 
		with (instance_create_layer(obj_player.x,obj_player.y,"playergunNE",eff_swingE))
			{Creator = _Creator}; ; 
		break;
	case direct.west: 
		with (instance_create_layer(obj_player.x,obj_player.y,"playergunSW",eff_swingW))
			{Creator = _Creator}; 
		break;
	case direct.northeast:
		with (instance_create_layer(obj_player.x,obj_player.y,"playergunNE",eff_swingN))
			{Creator = _Creator};
		break;
	case direct.northwest: 
		with (instance_create_layer(obj_player.x,obj_player.y,"playergunNE",eff_swingN))
			{Creator = _Creator}; 
		break;
}
state = scr_idle;