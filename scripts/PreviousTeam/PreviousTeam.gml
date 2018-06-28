/// @description	This script immediately skips to the previous team, skipping past all of the other
//					players in line. It skips to the previous team, and sets the current player to the 
//					first player in that list.

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Previous Team

// If the current team is not the first team in the team manager list, then move onto the previous team
if (oCombatManager.currentTeamIndex > 0) {
	oCombatManager.currentTeamIndex--;
}
// If the current team is the first team in the team manager list, then move onto the last team
else {
	oCombatManager.currentTeamIndex = ds_list_size(oCombatManager.teams) - 1;
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