///cardinal directions
enum direct
{
	north,
	south,
	east,
	west,
	northeast,
	northwest
}
enum action
{
	idle,		//standardmoves
	walk,		
	jog,
	sprint,
	idleshoot,		//shooting
	walkingshoot,
	joggingshoot,
	sprintshoot,
	idleswing,		//swinging
	walkingswing,
	joggingswing,
	sprintingswing,
	idlethrust,		//thrust
	walkingthrust,
	joggingthrust,
	sprintingthrust,
	jumping,
	dodging,
	
}

///action

//Items
enum item
{
	none	=0,
	sword	=1,
	hat		=2,
	flask	=3
}