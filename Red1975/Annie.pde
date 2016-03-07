/*
 * This class extends the character class. It represents the hero of the game, Annie.
 *
 */

class Annie extends Character {
  
  float mass;
  
  //Creates an instance of Annie
  Annie (){
      // Update location
      if (keyPressed){
      if (key == 'w' || key == 'W') {
        y -= 10;
      } else if (key == 's' || key == 'S') {
        y += 10;
      } else if (key == 'd' || key == 'D') {
        x += 10;
      } else if (key == 'a' || key == 'A') {
        x -= 10;
      } else if (key == ' ') {
        z += 10;
      }
    }
  }
  
  //Displays Annie
  void display(){
    translate(x,y,z);
    noStroke();
    fill(255);
    texture(face);
    sphere(20); 
  }
}