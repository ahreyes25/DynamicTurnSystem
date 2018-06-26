// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Set Next Player In Line
// There Is Another Player In Line After Current Player
if ((oCombatManager.currentTeamIndex + 1) < ds_list_size(oCombatManager.currentTeamTurn)) {
	oCombatManager.nextPlayerTurn = ds_list_find_value(oCombatManager.currentTeamTurn, oCombatManager.currentTeamIndex + 1);
}
// Else, There Is Not Another Player In Line After Current Player
else {
	oCombatManager.nextPlayerTurn = ds_list_find_value(oCombatManager.nextTeamTurn, 0);
}