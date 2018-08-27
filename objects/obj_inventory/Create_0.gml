/*
Inventory Item Key
0 - sword

*/

globalvar showinv; //display inventory
showinv = true;
globalvar maxitems; //total tiem slots
maxitems = 5;

for (i = 0; i < maxitems; i += 1)
{
	global.inventory[i] = -1;
}

