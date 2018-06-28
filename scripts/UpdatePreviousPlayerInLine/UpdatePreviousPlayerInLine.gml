/// @description	This script just looks at what our current player is, and the looks at the player before
//					it, and the player after it. These player all exist in our team lists.
//					These team lists are dynamic and can change in size at any point.

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Set Previous Player In Line

// If we are not the first player in our team list, then the previous player is simply the previous player in line
if ((oCombatManager.currentTeamPlayerIndex - 1) > 0) {
	oCombatManager.previousPlayerTurn = ds_list_find_value(oCombatManager.currentTeamTurn, oCombatManager.currentTeamPlayerIndex - 1);
}
// If we are the first player in our team list, then the previous player is the last player in the previous team 
else {
	oCombatManager.previousPlayerTurn = ds_list_find_value(oCombatManager.previousTeamTurn, ds_list_size(oCombatManager.previousTeamTurn) - 1);
}