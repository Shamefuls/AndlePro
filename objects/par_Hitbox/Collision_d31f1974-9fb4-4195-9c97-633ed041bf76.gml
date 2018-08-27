
var _origin = Creator; //stored creator ID
if (other.ObjectType > 0 && other.ObjectType != Creator)
{
		with (other) 
		{
			hp = hp -2;
			flash = 3;
			//hitfrom = other.direction;
			Knockback = 2;
			hitby = _origin
			//state = hurt state
		}

	instance_destroy();
}
