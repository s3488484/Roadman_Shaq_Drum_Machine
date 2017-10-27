// References used for this section include: CodingTrain: Gravitational Attraction 
// and Acceleration with Vectors Processing Example by Daniel Shiffman
class Attractor 
{
  
  float mass;
  float gravity;
  PVector position; 
  boolean dragging = false; 
  boolean rollover = false; 
  PVector dragOffset; 
  
  
  Attractor () 
  {
    position = new PVector(width/2,height/2); 
    mass = 100; 
    gravity = 1;
    dragOffset = new PVector(0.0,0.0);                 // Allows force to be applied even if attractor is moved 
  }
   
   PVector attract(Bap b)
   {
     PVector force = PVector.sub(position,b.position); // This is creating the direction of the force and storing it within a PVector which is accessed through the main code 
     float d = force.mag();                            // Using the magnitude to determine the distance 
     d = constrain(d,5.0,25.0);                        // limiting the distance calculation so the magnitude doesn't become to weak
     force.normalize();
     float strength = (gravity*mass*b.mass) / (d*d);   // Equation that determines the magnitude/ gravitational force 
     force.mult(strength);                             // Combines magnitude and direction to determine force applied
     return force;  
   }
   
   PVector attract(Ka k)
   {
     PVector force = PVector.sub(position,k.position);
     float d = force.mag();
     d = constrain(d,5.0,25.0);
     force.normalize();
     float strength = (gravity*mass*b.mass) / (d*d); 
     force.mult(strength);     
     return force;  
   }
   
    PVector attract(Tap t)
   {
     PVector force = PVector.sub(position,t.position);
     float d = force.mag();
     d = constrain(d,5.0,25.0);
     force.normalize();
     float strength = (gravity*mass*t.mass) / (d*d); 
     force.mult(strength);
     return force;  
   }
   
   PVector attract(Poom p)
   {
     PVector force = PVector.sub(position,p.position);
     float d = force.mag();
     d = constrain(d,5.0,25.0);
     force.normalize();
     float strength = (gravity*mass*p.mass) / (d*d); 
     force.mult(strength);
     return force;  
   }
   
   PVector attract(Skibidip s)
   {
     PVector force = PVector.sub(position,s.position);
     float d = force.mag();
     d = constrain(d,5.0,25.0);
     force.normalize();
     float strength = (gravity*mass*s.mass) / (d*d); 
     force.mult(strength);
     return force;  
   }
   
   PVector attract(Pop pop)
   {
     PVector force = PVector.sub(position,pop.position);
     float d = force.mag();
     d = constrain(d,5.0,25.0);
     force.normalize();
     float strength = (gravity*mass*pop.mass) / (d*d); 
     force.mult(strength);
     return force;  
   }
   
   PVector attract(AndA anda)
   {
     PVector force = PVector.sub(position,anda.position);
     float d = force.mag();
     d = constrain(d,5.0,25.0);
     force.normalize();
     float strength = (gravity*mass*anda.mass) / (d*d); 
     force.mult(strength);
     return force;  
   }
   
   PVector attract(Tootoot toot)
   {
     PVector force = PVector.sub(position,toot.position);
     float d = force.mag();
     d = constrain(d,5.0,25.0);
     force.normalize();
     float strength = (gravity*mass*toot.mass) / (d*d); 
     force.mult(strength);
     return force;  
   }
   
   PVector attract(Turrr turrr)
   {
     PVector force = PVector.sub(position,turrr.position);
     float d = force.mag();
     d = constrain(d,5.0,25.0);
     force.normalize();
     float strength = (gravity*mass*turrr.mass) / (d*d); 
     force.mult(strength);
     return force;  
   }
   
   PVector attract(Poom2 p2)
   {
     PVector force = PVector.sub(position,p2.position);
     float d = force.mag();
     d = constrain(d,5.0,25.0);
     force.normalize();
     float strength = (gravity*mass*p2.mass) / (d*d); 
     force.mult(strength);
     return force;  
   }
   
   PVector attract(Skiah sk2)
   {
     PVector force = PVector.sub(position,sk2.position);
     float d = force.mag();
     d = constrain(d,5.0,25.0);
     force.normalize();
     float strength = (gravity*mass*sk2.mass) / (d*d); 
     force.mult(strength);
     return force;  
   }
   
   PVector attract(Tuku tk)
   {
     PVector force = PVector.sub(position,tk.position);
     float d = force.mag();
     d = constrain(d,5.0,25.0);
     force.normalize();
     float strength = (gravity*mass*tk.mass) / (d*d); 
     force.mult(strength);
     return force;  
   }
   
   PVector attract(Kokoon kk)
   {
     PVector force = PVector.sub(position,kk.position);
     float d = force.mag();
     d = constrain(d,5.0,25.0);
     force.normalize();
     float strength = (gravity*mass*kk.mass) / (d*d); 
     force.mult(strength);
     return force;  
   }
   
   PVector attract(Ponpon pp)
   {
     PVector force = PVector.sub(position,pp.position);
     float d = force.mag();
     d = constrain(d,5.0,25.0);
     force.normalize();
     float strength = (gravity*mass*pp.mass) / (d*d); 
     force.mult(strength);
     return force;  
   }
   
    PVector attract(Poompoom po)
   {
     PVector force = PVector.sub(position,po.position);
     float d = force.mag();
     d = constrain(d,5.0,25.0);
     force.normalize();
     float strength = (gravity*mass*po.mass) / (d*d); 
     force.mult(strength);
     return force;  
   }
   
   PVector attract(YaDunKno ydk)
   {
     PVector force = PVector.sub(position,ydk.position);
     float d = force.mag();
     d = constrain(d,5.0,25.0);
     force.normalize();
     float strength = (gravity*mass*ydk.mass) / (d*d); 
     force.mult(strength);
     return force;  
   }
     
   PVector attract(BigShaq big)
   {
     PVector force = PVector.sub(position,big.position);
     float d = force.mag();
     d = constrain(d,5.0,25.0);
     force.normalize();
     float strength = (gravity*mass*big.mass) / (d*d); 
     force.mult(strength);
     return force;  
   }  
   
   PVector attract(Huh h)
   {
     PVector force = PVector.sub(position,h.position);
     float d = force.mag();
     d = constrain(d,5.0,25.0);
     force.normalize();
     float strength = (gravity*mass*h.mass) / (d*d); 
     force.mult(strength);
     return force;  
   }  
     
   void display() // This component is hidden intentionally 
   {
    ellipseMode(CENTER);
    noStroke(); 
    if (dragging) fill (255);
    else if (rollover) fill(100);
    else fill(255,200);
    ellipse(position.x,position.y,mass*2,mass*2);
   }
  
   
   void clicked( int mx, int my)
   {
    float d = dist(mx,my,position.x,position.y);
    if (d < mass) 
    {
      dragging = true;
      dragOffset.x = position.x-mx;
      dragOffset.y = position.y-my;
    }
   }
   
   void hover( int mx,int my)
   {
     float d = dist(mx,my,position.x,position.y);
     if (d < mass)
     { 
       rollover = true;
     }
     else
     { 
       rollover = false;
     }
   }
   
     
   void stopDragging() 
   {
     dragging = false;
   }
     
   
   void drag()
   {
     if (dragging)
     {
       position.x = mouseX + dragOffset.x;
       position.y = mouseY + dragOffset.y;
     }
   }
}