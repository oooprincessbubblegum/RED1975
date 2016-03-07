PImage background;
PImage title;
final int TITLE_POS_X = 960;
final int TITLE_POS_Y = 540;

void setup(){
  fullScreen();
  background = loadImage("./images/background.png");
  title = loadImage("./images/title.png");
}

void draw(){
  background(background);
  imageMode(CENTER);
  image(title, TITLE_POS_X, TITLE_POS_Y);
}