// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Create Players
var p1 = instance_create_layer(96 , 288, "MainLayer", oPlayerParent);
var p2 = instance_create_layer(112, 272, "MainLayer", oPlayerParent);
var p3 = instance_create_layer(190, 284, "MainLayer", oPlayerParent);
var p4 = instance_create_layer(208, 272, "MainLayer", oPlayerParent);
var p5 = instance_create_layer(224, 288, "MainLayer", oPlayerParent);

var c1 = instance_create_layer(room_width / 2, room_height / 2, "MainLayer", oIntermediateObject_CameraFocusPoint);

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Add players to team list
ds_list_add(oCombatManager.redTeam,  p1);
ds_list_add(oCombatManager.redTeam,  p2);
ds_list_add(oCombatManager.blueTeam, p3);
ds_list_add(oCombatManager.blueTeam, p4);
ds_list_add(oCombatManager.blueTeam, p5);

ds_list_add(oCombatManager.intermediate, c1);

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Assign Sprite Info
p1.sprite_index = sP1;
p2.sprite_index = sP2;
p3.sprite_index = sP3;
p4.sprite_index = sP4;
p5.sprite_index = sP5;