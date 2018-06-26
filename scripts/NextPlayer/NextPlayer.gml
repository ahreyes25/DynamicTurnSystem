UpdateTeamOrder();
UpdateNextPlayerInLine();
UpdatePreviousPlayerInLine();

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Next Player
// Increment oCombatManager Current Team Index
if (oCombatManager.currentTeamIndex < ds_list_size(oCombatManager.currentTeamTurn) - 1)
	oCombatManager.currentTeamIndex++;
else {
	oCombatManager.currentTeamTurn  = oCombatManager.nextTeamTurn;
	oCombatManager.currentTeamIndex = 0;
}

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Set Current Player
oCombatManager.currentPlayerTurn = ds_list_find_value(oCombatManager.currentTeamTurn, oCombatManager.currentTeamIndex);