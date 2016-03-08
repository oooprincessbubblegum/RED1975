/*
 * A class describing a group of Particles
 *
 */
 class ParticleSystem {
 
   ArrayList<Particle> particles;
   int iteration;
   float t = 0;
     // The heading of the wind
  float degrees = 0;
  // The strength of the wind
  float windMag = 0.05;
  // The variance of the wind
  float windVar = 0.02;

   ParticleSystem(){
     particles = new ArrayList<Particle>();
   }
   
   PVector makeWind(float mag, float degrees) {
    float x;
    float y;
    // For the bottom right quadrant
    if (degrees > 270) {
      x = mag * cos(degrees);
      y = -mag * sin(degrees);
    // For the bottom left quadrant
    } else if (degrees > 180) {
      x = -mag * cos(degrees);
      y = -mag * sin(degrees);
    // For the top left quadrant
    } else if (degrees > 90) {
      x = -mag * cos(degrees);
      y = mag * sin(degrees);
    // For the top right quadrant
    } else {
      x = mag * cos(degrees);
      y = mag * sin(degrees);
    }
    return new PVector(x, y);
  }
  
   void applyForces() {
     for (Particle p : particles){
      // Get a random noise value given the particle's location
      float windNoise = noise(p.location.x, p.location.y);
      // Calculate the new wind heading factoring in random noise in a gaussian distribution
      degrees = degrees + windVar * windNoise * randomGaussian();
      // Create a vector for the wind force
      PVector wind = makeWind(windMag, degrees);
      // Apply the wind force
      p.applyForce(wind);
     }
   }
   
   void run() {
     applyForces();
     for (int i = particles.size()-1; i >= 0; i--) {
       Particle p = particles.get(i);
       p.run();
       if (p.isDead()){
         particles.remove(i);
       }
     }
     iteration++;
   }
   
   void addParticle() {
     particles.add(createParticle());
   }
   
   Particle createParticle() {
     return new Particle();
   }
 }