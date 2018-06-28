/// @description	This script immediately skips to the next team, skipping past all of the other
//					players in line. It skips to the next team, and sets the current player to the 
//					first player in that list.

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Next Team

// If the current team is not the last team in the team manager list, then move onto the next team
if (oCombatManager.currentTeamIndex < ds_list_size(oCombatManager.teams) - 1) {
	oCombatManager.currentTeamIndex++;
}
// If the current team is the last team in the team manager list, then move onto the first team 
else {
	oCombatManager.currentTeamIndex = 0;
}
// Set the current player to be the first player in that list
oCombatManager.currentTeamPlayerIndex = 0;

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Update current team and current player
oCombatManager.currentTeamTurn		= ds_list_find_value(oCombatManager.teams, oCombatManager.currentTeamIndex);
oCombatManager.currentPlayerTurn	= ds_list_find_value(oCombatManager.currentTeamTurn, oCombatManager.currentTeamPlayerIndex);

// Update all of our other variables before moving on...
UpdateTeamOrder();
UpdateNextPlayerInLine();
UpdatePreviousPlayerInLine();