// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Set Next Team In Line
if (oCombatManager.currentTeamTurn == oCombatManager.redTeam) {
/*	oCombatManager.nextTeamTurn		= oCombatManager.blueTeam;	*/
/*	oCombatManager.previousTeamTurn	= oCombatManager.blueTeam;	*/
	oCombatManager.nextTeamTurn		= oCombatManager.blueTeam;
	oCombatManager.previousTeamTurn	= oCombatManager.intermediate;
}
else if (oCombatManager.currentTeamTurn == oCombatManager.blueTeam) {
/*	oCombatManager.nextTeamTurn		= oCombatManager.redTeam;	*/
/*	oCombatManager.previousTeamTurn	= oCombatManager.redTeam;	*/
	oCombatManager.nextTeamTurn		= oCombatManager.intermediate;
	oCombatManager.previousTeamTurn	= oCombatManager.redTeam;
}
// Comment this "else-if" out if you do not want an intermediate list
else if (oCombatManager.currentTeamTurn == oCombatManager.intermediate) {
	oCombatManager.nextTeamTurn		= oCombatManager.redTeam;
	oCombatManager.previousTeamTurn	= oCombatManager.blueTeam;
}