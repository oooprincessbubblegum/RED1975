/**
 * Title: RED 1978
 * Name: SOPHIA LIM
 * Date: March 4, 2016
 * Description: This is a prototype for a third person adventure game, in which the player survives as a child during the Cambodian genocide
 */

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Initializes variables
//Initial position of platform
int px = 400;
int py = 150;
int pz = -320;

//Initial position of Annie
int x = 400;
int y = 200;
int z = -300;

Minim minim;
AudioPlayer bgmPlayer;

PImage face;
PImage bgm;

void setup() {
  size(800, 600, P3D);
  bgm = loadImage("./images/background.png");
  minim = new Minim(this);
  bgmPlayer = minim.loadFile("./sounds/bgm.mp3");
  bgmPlayer.play();
}

void draw() {
  
  camera(mouseX, (height*0.25), (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);
  background(bgm);
  rotateX(PI/2);
  directionalLight(51, 102, 126, 0, 0, -0.75);
  ambientLight(102,102,102);
  
  //Draw platform
  pushMatrix();
    fill(#55552b);
    translate(px,py,pz);
    rotateZ(PI/2);
    rectMode(CENTER);
    rect(0,0,500,500);
  popMatrix();
  
  //Creates instance of Annie
  Annie Annie = new Annie();
  Annie.display();
}