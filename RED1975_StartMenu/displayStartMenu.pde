void displayStartMenu(){
  background(background);
  imageMode(CENTER);
  image(title, TITLE_POS_X, TITLE_POS_Y);
  applyCommand(command, TITLE_POS_X, COMMAND_POS_Y);
}