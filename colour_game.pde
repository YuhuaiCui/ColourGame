/*
Daniel Cui
 9/16/2021
 Colour Game
 */

//The hidden secrets inside ourselves are dull. The open secrets outside are colourful.
//The hidden secrets within us are truthful. The outside world is full of deceit.

//-----------colours-----------
color red = #DF151A;
color orange = #FD8603;
color yellow = #F4F328;
color green = #00DA3C;
color blue = #00CBE7;
color purple = #AA00FF;
color pink = #FF00AA;
color grey = #82837E;
color black = #000000;
color[] colors;

//-----------ints-----------
int mode;
final int HOME = 0;
final int GAME = 1;
final int GAMEOVER = 2;
int frames;
int i;

//-----------float-----------
float x, y;
float timer;

//-----------String-----------
String[] words;
String leadingZero;

//Images
PImage[] gif;

//Fonts
PFont mc;
PFont mcItalic;

void setup() { //-----------setup start-----------
  size(800, 800);
  background(255);
  mode = HOME;

  //font initialization
  mc = createFont("MotionControl-Bold.otf", 128);
  mcItalic = createFont("MotionControl-BoldItalic.otf", 128);

  //swirl initialization
  imageMode(CENTER);
  frames = 35;
  i = 0;
  leadingZero = "0";
  gif = new PImage [frames];
  while (i < frames) {
    if (i < 10) leadingZero = "0";
    else leadingZero = "";
    gif[i] = loadImage("frame_" + leadingZero + i + "_delay-0.05s.gif");
    i++;
  }

  //colours initialization
  words = new String [6];
  colors = new color [6];
  words[0] = "red";
  words[1] = "orange";
  words[2] = "yellow";
  words[3] = "green";
  words[4] = "blue";
  words[5] = "purple";
  colors[0] = red;
  colors[1] = orange;
  colors[2] = yellow;
  colors[3] = green;
  colors[4] = blue;
  colors[5] = purple;

  //colour text initialization
  textAlign(CENTER, CENTER);
  x = width/2;
  y = height/2;
} //-----------setup end-----------

void draw() { //-----------draw star-----------
  if (mode == HOME) {
    home();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
} //-----------draw end-----------
