int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
    num scoreA = 0;
    num scoreB = 0;

    teamA.forEach((key, value) {
    if (key == 'Free throws')
        scoreA += value;
    else if (key == '2 pointer')
        scoreA += value * 2;
    else if (key == '3 pointer')
        scoreA += value * 3;
  });

  teamB.forEach((key, value) {
    if (key == 'Free throws')
        scoreB += value;
    else if (key == '2 pointer')
        scoreB += value * 2;
    else if (key == '3 pointer')
        scoreB += value * 3;
  });

    if ( scoreA > scoreB) {
        return 1;
    } else if ( scoreA < scoreB){
        return 2;
    } else {
        return 0;
    }
}