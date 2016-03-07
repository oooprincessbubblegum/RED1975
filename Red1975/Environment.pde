/*
 * This class represents the environment in which the characters, trees and buildings will be displayed in. 
 *
 */

class Environment {
  PShape background;
  PImage bgm;
  
  Environment(){
    displaySky(1);
  }
  
  //Displays daylit sky if skyMode is 1, else displays night sky 
  void displaySky(int skyMode){
    if (skyMode == 1){
      bgm = loadImage("./images/background.png");
    } else if (skyMode == 2){
      bgm = loadImage("./images/background.png");
    }
    background(bgm);
  }
  //Display platform
  void display(){
    pushMatrix();
      fill(#55552b);
      translate(px,py,pz);
      rotateZ(PI/2);
      rectMode(CENTER);
      rect(0,0,500,500);
    popMatrix();
  }
}