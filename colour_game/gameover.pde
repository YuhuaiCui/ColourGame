void gameover() {
  background(pink);
  fill(black);
  textSize(100);
  text("GAMEOVER", width/2, height/2);
  textSize(50);
  text("Best Score: " + highScore, width/2, height/2 + 100);
  text("Your Score: " + score, width/2, height/2 + 150);
}

void gameoverClicks() {
  mode = HOME;
}
