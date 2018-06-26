// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Create Teams
redTeam			= ds_list_create();
blueTeam		= ds_list_create();

intermediate	= ds_list_create();

CreatePlayers();

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Tracking Turns
currentTeamTurn		= noone;
nextTeamTurn		= noone;
previousTeamTurn	= noone;

currentPlayerTurn	= noone;
nextPlayerTurn		= noone;
previousPlayerTurn	= noone;

currentTeamIndex	= 0;

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Decide Which Team Goes First
currentTeamTurn = choose(redTeam, blueTeam);

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Set Starting Player
currentPlayerTurn = ds_list_find_value(currentTeamTurn, currentTeamIndex);