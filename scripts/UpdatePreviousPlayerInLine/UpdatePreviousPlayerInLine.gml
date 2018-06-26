// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Set Previous Player In Line
// There Is Another Player In Line Before Current Player
if ((oCombatManager.currentTeamIndex - 1) > 0) {
	oCombatManager.previousPlayerTurn = ds_list_find_value(oCombatManager.currentTeamTurn, oCombatManager.currentTeamIndex - 1);
}
// Else, There Is Not Another Player In Line Before Current Player
else {
	oCombatManager.previousPlayerTurn = ds_list_find_value(oCombatManager.previousTeamTurn, ds_list_size(oCombatManager.previousTeamTurn) - 1);
}