/*
 * A class describing a simple physical particle in 2D space. 
 * Particles have a position, a velocity, an acceleration, a mass and a lifespan.
 *
 */
class Particle {
  final float LIFESPAN_INIT_VALUE = 255;
  final float LIFESPAN_DECREMENT = 1.0f;
  final float TINT = 255;
  
  PVector location;
  PVector velocity;
  PVector acceleration;
  float lifespan;
  float mass;
  
  float tx;
  float ty;
  
  Particle() {
    mass = 1;
    location = new PVector(0, 0);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0,0);
    lifespan = LIFESPAN_INIT_VALUE;
    tx = 0;
    ty = 10000;
  }
  
  void applyForce(PVector force) {
    PVector f = force.get();
    f.div(mass);
    acceleration.add(f);
  } 
  
  void update() {
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
    lifespan -= LIFESPAN_DECREMENT;
  }
  
  void display() {
   tint(TINT,lifespan);
   image(particle, location.x, location.y); 
  }
  
  void run() {
    update();
    display();
  }
  
  boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    } else {
      return false;
    }
  }
  
  
}