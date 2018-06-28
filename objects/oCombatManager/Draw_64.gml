var scale = 0.75;
draw_set_color(c_red);

draw_text_transformed(10, 10, "currentTeam: " + string(currentTeamTurn), scale, scale, 0);
draw_text_transformed(10, 20, "nextTeam: " + string(nextTeamTurn), scale, scale, 0);
draw_text_transformed(10, 30, "previousTeam: " + string(previousTeamTurn), scale, scale, 0);
draw_text_transformed(10, 40, "teamIndex: " + string(currentTeamIndex), scale, scale, 0);

draw_text_transformed(10, 60, "currentPlayer: " + string(currentPlayerTurn), scale, scale, 0);
draw_text_transformed(10, 70, "nextPlayer: " + string(nextPlayerTurn), scale, scale, 0);
draw_text_transformed(10, 80, "previousPlayer: " + string(previousPlayerTurn), scale, scale, 0);
draw_text_transformed(10, 90, "playerIndex: " + string(currentTeamPlayerIndex), scale, scale, 0);