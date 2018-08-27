scr_inputs();
var _Creator = ObjectType;

with (instance_create_layer(obj_player.x,obj_player.y,"playergunSW",eff_lunge))
	{Creator = _Creator};

//if (!instance_exists(eff_lunge))
state = scr_idle;