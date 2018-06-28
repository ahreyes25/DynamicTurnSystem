// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Check To See If We Are The Active Player

// This means that it is currenty this players turn...
if (oCombatManager.currentPlayerTurn.id == id) {
	active = true;
	
	// Do whatever you want the player to do here when it is their turn:
	//	- Move around
	//	- State machine
	//	- Networking
	//	- Etc...
}
// This means that it is currently NOT this players turn...
else {
	active = false;
	
	// Do whatever you want the player to do here when it is NOT their turn:
	//	- Sit still and idle
	//	- State machine
	//	- Networking
	//	- Etc...
}