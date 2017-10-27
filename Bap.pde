

class Bap   
{
  float mass; 
  float size;  
  PVector position;
  PVector velocity;
  PVector acceleration;
  
  
  Bap()
  {
    size = 60;
    position = new PVector(270,350);        // Starting position
    velocity = new PVector(1,0);
    acceleration = new PVector(0,0);
    mass =50;   
  }
  
  void applyForce(PVector force)            // Allows the class to recognise when force is being created by the attractor
  {
    PVector f = PVector.div(force,mass);
    acceleration.add(f); 
  }
 
  void update()                            // Class movement works in conjunction to applyForce
  {
   velocity.add(acceleration);
   position.add(velocity);
   acceleration.mult(0);
  }
   
   void pulse()
  {
    float sinOfTime = sin(frameCount*2);   
    size = map(sinOfTime, -1, 1, 20, 300); // Size created  = Sine Equation constrained to decrease,increase,minimum size,maximum size 
  } 
  
  void display()
  {
    strokeWeight(20);
    stroke(0,190,105,150);
    noFill();
    ellipse(position.x,position.y,size,size); 
  }
  
  void checkEdges()
  {
    if (position.x >width)
    {
      position.x = 0;
    }
    else if (position.x < 0)
    {
      position.x = width;
    }
    
    
    if (position.y > height)
    {
      velocity.y *= -1;
      position.y = height;
    }  
  }
}