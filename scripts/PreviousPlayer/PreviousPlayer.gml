/// @description	This script iterates onto the previous player in line. We have to first check
//					to make sure that we have the previous player in line setup, and we do that with
//					our script calls at the top of this script here. Then we move to the previous player,
//					set current player to that object, and then update the previous and next in line again.

UpdateTeamOrder();
UpdateNextPlayerInLine();
UpdatePreviousPlayerInLine();

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Previous Player

// If we arent at the beginning of our list, then decrement our index by 1
if (oCombatManager.currentTeamPlayerIndex > 0) {
	oCombatManager.currentTeamPlayerIndex--;
}
// If we are at the beginning of the list, set the current team to what we have stored in our previousTurn
// variable, and then set our current player index to the last value in that team list.
else {
	oCombatManager.currentTeamTurn			= oCombatManager.previousTeamTurn;
	oCombatManager.currentTeamPlayerIndex	= ds_list_size(oCombatManager.currentTeamTurn) - 1;
	
	// We have now moved onto the previous team, so we need to update our team index.
	// If we arent at the beginning of our teams list, then decrement our team index by 1
	if (oCombatManager.currentTeamIndex > 0) {
		oCombatManager.currentTeamIndex--;
	}
	// If we are at the beginning of the list, set the team index to length - 1, getting the
	// last value that is stored in that list.
	else {
		oCombatManager.currentTeamIndex = ds_list_size(oCombatManager.teams) - 1;
	}
}

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Set Current Player, we need to update who the current player is
oCombatManager.currentPlayerTurn = ds_list_find_value(oCombatManager.currentTeamTurn, oCombatManager.currentTeamPlayerIndex);

// Lastly, update all of our other turn variables before we move on...
UpdateTeamOrder();
UpdateNextPlayerInLine();
UpdatePreviousPlayerInLine();