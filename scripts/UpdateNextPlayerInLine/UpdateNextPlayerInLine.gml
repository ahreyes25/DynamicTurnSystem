/// @description	This script just looks at what our current player is, and the looks at the player before
//					it, and the player after it. These player all exist in our team lists.
//					These team lists are dynamic and can change in size at any point.

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Set Next Player In Line

// If we are not the last player in our team list, then the next player is simply the next player in line
if ((oCombatManager.currentTeamPlayerIndex + 1) < ds_list_size(oCombatManager.currentTeamTurn)) {
	oCombatManager.nextPlayerTurn = ds_list_find_value(oCombatManager.currentTeamTurn, oCombatManager.currentTeamPlayerIndex + 1);
}
// If we are the last player in our team list, then the next player is the first player in the next team 
else {
	oCombatManager.nextPlayerTurn = ds_list_find_value(oCombatManager.nextTeamTurn, 0);
}