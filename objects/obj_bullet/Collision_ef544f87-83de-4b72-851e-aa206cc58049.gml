
var _origin = Creator; //stored creator ID
if (other.ObjectType > 0 && other.ObjectType != Creator)
{
		with (other) 
		{
			hp--;
			flash = 3;
			//hitfrom = other.direction;
		}
	instance_destroy();
}

if (other.ObjectType == 0)
	instance_destroy();
