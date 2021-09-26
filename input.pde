void mousePressed() {
   if (mode == HOME) {
   homeClicks();
 } else if (mode == GAME) {
   gameClicks();
 } else if (mode == GAMEOVER) {
  gameoverClicks();
 } else {
  println("Error: Mode Clicks = " + mode); 
 }
}
