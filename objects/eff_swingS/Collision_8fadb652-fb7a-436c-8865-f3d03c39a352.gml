/// @description Insert description here
// You can write your code in this editor
var _Creator = Creator;
if (image_index == 3)
	if (!instance_exists(HB_swingS))
		{
			with (instance_create_layer(obj_player.x,obj_player.y,"Bullet",HB_swingS))
				{Creator = _Creator}
		}