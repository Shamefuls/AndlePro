/// @desc scr_movementcollision(hspd,vspd,obj_collison);
/// @arg hspd
/// @arg vspd
/// @arg collision_object


var _hspd = argument[0];
var _vspd = argument[1];
var _obj = argument[2];
//var _destroy = argument[3];

if(place_meeting(x+_hspd,y,_obj))
{
	while(!place_meeting(x+sign(_hspd),y,_obj))
	{
		x+=sign(_hspd);
	}
	_hspd = 0;
	
	//if (_destroy)
		//instance_destroy();
}
x += _hspd;

if(place_meeting(x,y+_vspd,_obj))
{
	while(!place_meeting(x,y+sign(_vspd),_obj))
	{
		y+=sign(_vspd);
	}
	_vspd = 0;
	
	//if (_destroy)
		//instance_destroy();
}
y += _vspd;

