//==================================
//Targeting
//==================================
spd = 1;
sight = 128;
target = obj_player;
targetx = 0;
targety = 0;
dir = 0;

//==================================
//CollisionType
//==================================
ObjectType = CollisionType.enemy

//==================================
//Combat/Health
//==================================
hp = 20;

attackdis = 32;
Knockback = 0;
hitby = noone;
hitfrom = 0;
flash = 0;
//==================================
//State
//==================================
state = scr_enemyidle;
alarm[0] = room_speed*random_range(2,5);

direct = direct.east
action = action.idle