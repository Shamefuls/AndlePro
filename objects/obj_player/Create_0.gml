//===================================================
//Essentials
//===================================================
hspd = 0; //left/right movement
vspd = 0; //up/down movement
spd = 3;   //how fast we move
knockback = 0;
hitby = noone;
ObjectType = CollisionType.player
state = scr_idle;
//===================================================
//Stats
//===================================================
hp = 6;
str = 2;
def = 2;
int = 4;
luck = 2;
//===================================================
//Sprite Array
//===================================================

direct = direct.east;
action = action.idle;

spr[direct.north,action.idle] = spr_BreadidleN;
spr[direct.south,action.idle] = spr_BreadidleS;
spr[direct.east,action.idle] = spr_BreadidleE;
spr[direct.west,action.idle] = spr_BreadidleW;
spr[direct.northwest,action.idle] = spr_BreadidleNW;
spr[direct.northeast,action.idle] = spr_BreadidleNE;

spr[direct.north,action.walk] = spr_BreadwalkN;
spr[direct.south,action.walk] = spr_BreadwalkS;
spr[direct.east,action.walk] = spr_BreadwalkE;
spr[direct.west,action.walk] = spr_BreadwalkW;
spr[direct.northwest,action.walk] = spr_BreadwalkNW;
spr[direct.northeast,action.walk] = spr_BreadwalkNE;

spr[direct.north,action.jog] = spr_BreadjogN;
spr[direct.south,action.jog] = spr_BreadjogS;
spr[direct.east,action.jog] = spr_BreadjogE;
spr[direct.west,action.jog] = spr_BreadjogW;
spr[direct.northwest,action.jog] = spr_BreadjogNW;
spr[direct.northeast,action.jog] = spr_BreadjogNE;

///spr[direct.north,action.sprint] = spr_BreadsprintN;
///spr[direct.south,action.sprint] = spr_BreadsprintS;
///spr[direct.east,action.sprint] = spr_BreadsprintE;
///spr[direct.west,action.sprint] = spr_BreadsprintW;

spr[direct.north,action.idleshoot] = spr_BreadidleaimN;
spr[direct.south,action.idleshoot] = spr_BreadidleaimS;
spr[direct.east,action.idleshoot] = spr_BreadidleaimE;
spr[direct.west,action.idleshoot] = spr_BreadidleaimW;
spr[direct.northwest,action.idleshoot] = spr_BreadidleaimNW;
spr[direct.northeast,action.idleshoot] = spr_BreadidleaimNE;

spr[direct.north,action.walkingshoot] = spr_BreadwalkaimN;
spr[direct.south,action.walkingshoot] = spr_BreadwalkaimS;
spr[direct.east,action.walkingshoot] = spr_BreadwalkaimE;
spr[direct.west,action.walkingshoot] = spr_BreadwalkaimW;
spr[direct.northwest,action.walkingshoot] = spr_BreadwalkaimNW;
spr[direct.northeast,action.walkingshoot] = spr_BreadwalkaimNE;

spr[direct.north,action.joggingshoot] = spr_BreadjogaimN;
spr[direct.south,action.joggingshoot] = spr_BreadjogaimS;
spr[direct.east,action.joggingshoot] = spr_BreadjogaimE;
spr[direct.west,action.joggingshoot] = spr_BreadjogaimW;
spr[direct.northwest,action.joggingshoot] = spr_BreadjogaimNW;
spr[direct.northeast,action.joggingshoot] = spr_BreadjogaimNE;

///spr[direct.north,action.sprintshoot] = spr_BreadjogN;
///spr[direct.south,action.sprintshoot] = spr_BreadjogS;
///spr[direct.east,action.sprintshoot] = spr_BreadjogE;
///spr[direct.west,action.sprintshoot] = spr_BreadjogW;

spr[direct.north,action.idlethrust] = spr_BreadidlethrustN;
spr[direct.south,action.idlethrust] = spr_BreadidlethrustS;
spr[direct.east,action.idlethrust] = spr_BreadidlethrustE;
spr[direct.west,action.idlethrust] = spr_BreadidlethrustW;
spr[direct.northwest,action.idlethrust] = spr_BreadidlethrustNW;
spr[direct.northeast,action.idlethrust] = spr_BreadidlethrustNE;

spr[direct.north,action.walkingthrust] = spr_BreadwalkthrustN;
spr[direct.south,action.walkingthrust] = spr_BreadwalkthrustS;
spr[direct.east,action.walkingthrust] = spr_BreadwalkthrustE;
spr[direct.west,action.walkingthrust] = spr_BreadwalkthrustW;
spr[direct.northwest,action.walkingthrust] = spr_BreadwalkthrustNW;
spr[direct.northeast,action.walkingthrust] = spr_BreadwalkthrustNE;

spr[direct.north,action.joggingthrust] = spr_BreadjogthrustN;
spr[direct.south,action.joggingthrust] = spr_BreadjogthrustS;
spr[direct.east,action.joggingthrust] = spr_BreadjogthrustE;
spr[direct.west,action.joggingthrust] = spr_BreadjogthrustW;
spr[direct.northwest,action.joggingthrust] = spr_BreadjogthrustNW;
spr[direct.northeast,action.joggingthrust] = spr_BreadjogthrustNE;