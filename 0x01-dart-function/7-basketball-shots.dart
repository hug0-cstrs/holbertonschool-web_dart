int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int teamAPoints = 0;
  int teamBPoints = 0;

  // Calculate total points for team A
  teamAPoints += teamA['Free throws'] ?? 0;
  teamAPoints += (teamA['2 pointers'] ?? 0) * 2;
  teamAPoints += (teamA['3 pointers'] ?? 0) * 3;

  // Calculate total points for team B
  teamBPoints += teamB['Free throws'] ?? 0;
  teamBPoints += (teamB['2 pointers'] ?? 0) * 2;
  teamBPoints += (teamB['3 pointers'] ?? 0) * 3;

  // Compare total points and determine the winning team
  if (teamAPoints > teamBPoints) {
    return 1;
  } else if (teamAPoints < teamBPoints) {
    return 2;
  } else {
    return 0;
  }
}