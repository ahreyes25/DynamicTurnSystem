UpdateTeamOrder();
UpdateNextPlayerInLine();
UpdatePreviousPlayerInLine();

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Previous Player
// Decrement oCombatManager Current Team Index
if (oCombatManager.currentTeamIndex > 0)
	oCombatManager.currentTeamIndex--;
else {
	oCombatManager.currentTeamTurn  = oCombatManager.previousTeamTurn;
	oCombatManager.currentTeamIndex = ds_list_size(oCombatManager.currentTeamTurn) - 1;
}

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Set Current Player
oCombatManager.currentPlayerTurn = ds_list_find_value(oCombatManager.currentTeamTurn, oCombatManager.currentTeamIndex);