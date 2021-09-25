int currentFrame = 0;

void home() {
  //background gif
  background(black);
  image(gif[currentFrame], width/2, width/2, 550, 550);
  currentFrame++;
  if (currentFrame == frames) {
    currentFrame = 0;
  }
    leadingZero = "0";
  if (currentFrame >= 10) {
    leadingZero = "";
  }
  
  //colour game Text
  textFont(mc);
  textSize(100);
  text("THE COLOUR GAME", width/2, 700);
}

void homeClicks() {
  mode = GAME;
  timer = 0;
  score = 0;
}
