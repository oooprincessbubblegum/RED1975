final int TITLE_POS_X = 960;
final int TITLE_POS_Y = 540;
final int COMMAND_POS_Y = 810;

PImage background;
PImage title;
PImage particle;
ArrayList<ParticleSystem> systems;
String command = "Press any key";

void setup(){
  fullScreen();
  background = loadImage("./images/background.png");
  title = loadImage("./images/title.png");
  particle = loadImage("./images/particle.png");
  systems = new ArrayList<ParticleSystem>();
  
}

void draw(){
  displayStartMenu();
  newGame();
  for (ParticleSystem ps : systems) {
    ps.run();
    ps.addParticle();
  }
  //Particle p = new Particle();
  //p.run();
  //systems.add(new ParticleSystem());
}