int w;
int c;
int timer = 0;

void game() {
  background(255, 0, 0);
  
  //timer
  if (timer <= 69) {
  timer++;
  textSize(20);
  fill(black);
  text(timer, width/2, height/2 - 200);
  } else if (timer > 69) {
   mode = GAMEOVER; 
  }
  
  //randomize colours
  w = int (random(0, 6));
  c = int (random(0, 6));
  
  //show colours;
  textSize(50);
  fill(colors[c]);
  text(words[w], x, y);
}

void gameClicks() {
  if (timer <= 69) {
  timer = 0;
  }
}
