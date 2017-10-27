

class Pop
{
  float size;
  float mass; 
  PVector position;
  PVector acceleration;
  PVector velocity; 
  
  
  
  Pop() 
  {
   size = 50; 
   position = new PVector(260,330);
   velocity = new PVector(1,0);
   acceleration = new PVector(0,0);
   mass = 100; 
  }
  
  void applyForce(PVector force)
  {
    PVector f = PVector.div(force,mass);
    acceleration.add(f); 
  }
  
  void update() 
  {
   velocity.add(acceleration);
   position.add(velocity);
   acceleration.mult(0);
  }
  
  void pulse()
  {
    float sinOfTime = sin(frameCount*0.05);
    size = map(sinOfTime, -1, 1, 150, 500);  
  }
  
  void display() 
  {
    noFill();
    strokeWeight(20);
    stroke(255,240,0,230);
    ellipse(position.x,position.y,size,size);
  }

  void checkEdges() 
  {

    if (position.x > width) 
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