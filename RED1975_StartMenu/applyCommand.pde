int commandSize = 32;
int commandColour = 255;

void applyCommand(String text, int posX, int posY){
  textAlign(CENTER);
  textSize(commandSize);
  fill(commandColour);
  text(text,posX,posY);
}