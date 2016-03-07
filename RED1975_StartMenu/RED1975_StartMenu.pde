final int TITLE_POS_X = 960;
final int TITLE_POS_Y = 540;
final int COMMAND_POS_Y = 810;

PImage background;
PImage title;
PImage particle;

String command = "Press any key";

void setup(){
  fullScreen();
  background = loadImage("./images/background.png");
  title = loadImage("./images/title.png");
  particle = loadImage("./images/particle.png");
}

void draw(){
  displayStartMenu();
  newGame();
}