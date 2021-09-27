int w;
int c;
int score = 0;
int highScore = 0;
boolean reset;
boolean chance;
boolean rng;
float time;
float bar;

void game() {
  //background
  strokeWeight(0);
  fill(255);
  rect(0, 0, width/2, height);
  fill(0);
  rect(width/2, 0, width/2, height);

  //score
  fill(grey);
  textSize(100);
  text(score, width/2, 200);
  if (score >= highScore) {
   highScore = score; 
  }

  //timer
  if (timer <= 69) {
    timer++;
  } else if (timer > 69) {
    mode = GAMEOVER;
  }
  time = map(timer, 0, 69, 0, width);
  bar = map(timer, 0, 69, 0, 100);
  if (bar < 50) {
    fill(green);
  } else if (bar > 50 && bar < 80)
    fill(yellow);
  else {
    fill(red);
  }
  rect(0, height - 50, time, 50);


  //randomize colours
  if (timer == 0 || reset == true) {
    chance = boolean (int (random(0, 2)));
    if (chance == true) {
      w = int (random(0, 6));
      c = w;
    } else if (chance == false) {
      rng = boolean (int (random(0, 2)));
      w = int(random(0, 6));
      if (w > 0 && w < 6) {
        if (rng == true) {
          c = int (random(0, w));
        }
       else if (rng == false) {
        c = int (random(w, 6));
      }
    } else if (w == 0) {
      c = int (random(w, 6));
    } else if (w == 6) {
      c = int (random(0, w)); 
    }
  }
  reset = false;
}

//show colours;
textAlign(CENTER, CENTER);
textSize(200);
textFont(mcItalic);
fill(colors[c]);
text(words[w], x, y);

//true
textSize(50);
textFont(mc);
fill(black);
text("TRUE", 200, 50);

//false
textSize(50);
textFont(mc);
fill(255);
text("FALSE", 600, 50);
}

void gameClicks() {
  if (w == c && mouseX < width/2) {
    timer = 0;
    score++;
    reset = true;
  } else if (w < c || w > c && mouseX > width/2) {
    timer = 0;
    score++;
    reset = true;
  } else {
    mode = GAMEOVER;
  }
}
