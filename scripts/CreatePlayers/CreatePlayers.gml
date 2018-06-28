/// @description	This script is designed to be replaced with your own code. The important thing
//					to note here is that the game objects are created and pushed into the team lists.
//					As long as the objects exist inside the team lists then the turn system will know
//					how to iterate between them appropriately.

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Create Players, these are just instances of the oPlayerParent that I 
// have given an assigned x & y positions, but these positions are not
// important. Even if the object was running around the room and not fixed
// in place, this system would still work and the camera would follow them.
var p1 = instance_create_layer(96 , 288, "MainLayer", oPlayerParent);
var p2 = instance_create_layer(112, 272, "MainLayer", oPlayerParent);
var p3 = instance_create_layer(190, 284, "MainLayer", oPlayerParent);
var p4 = instance_create_layer(208, 272, "MainLayer", oPlayerParent);
var p5 = instance_create_layer(224, 288, "MainLayer", oPlayerParent);

var c1 = instance_create_layer(room_width / 2, room_height / 2, "MainLayer", oIntermediateObject_CameraFocusPoint);

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Add Players To Team List, any object can be added into these lists,
// for now, we are just working with "player" objects
ds_list_add(oCombatManager.redTeam,  p1);
ds_list_add(oCombatManager.redTeam,  p2);
ds_list_add(oCombatManager.blueTeam, p3);
ds_list_add(oCombatManager.blueTeam, p4);
ds_list_add(oCombatManager.blueTeam, p5);

// Here we add our intermediate object to it's list, remember, if you
// dont want to use this in your game, then just delete the list, 
// remove this line of code, and delete the intermediate list from the 
// list manager. For now, it exists as a camera focus point.
ds_list_add(oCombatManager.intermediate, c1);

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Assign Sprite Info, this is only appropriate to this project, again
// you would suppliment this out with your own code that is appropriate
// to your game. 
p1.sprite_index = sP1;
p2.sprite_index = sP2;
p3.sprite_index = sP3;
p4.sprite_index = sP4;
p5.sprite_index = sP5;