// Because there is a lot of repetition 
// in this program please look at this 
// page and classes Attractor and Bap 
// for annotated notes and also I apologise 
// for the random class names they were meant to be 
// work in progress names only but I ran out of time 
// to change them 

// ENJOY 

import ddf.minim.*;        // Importing external libraries into the program
import controlP5.*;


ControlP5 cp5;             // Library Reference Variables 
Minim minim;


AudioPlayer backtrack;     // Audio Global Variables 
AudioSample marker1;
AudioSample marker2;
AudioSample marker3; 
AudioSample marker4;
AudioSample marker5; 
AudioSample marker6;
AudioSample marker7; 
AudioSample marker8;
AudioSample marker9;
AudioSample marker10;
AudioSample marker11;
AudioSample marker12;
AudioSample marker13;
AudioSample marker14;
AudioSample marker15;
AudioSample marker16; 
AudioSample marker17;
AudioSample marker18;

Attractor a;              // Class Global Variables 
Bap b; 
Ka k;
Tap t;
Poom p;
Skibidip s;
Pop pop;
AndA anda;
Tootoot toot;
Turrr turrr;
Poom2 p2;
Skiah sk2; 
Tuku tk;
Kokoon kk;
Ponpon pp;
Poompoom po;
YaDunKno ydk;
BigShaq big;
Huh h;


float background;      

void setup() 
{
  cp5 = new ControlP5(this);
 
  a = new Attractor();
  
  b = new Bap();          // Statement function, ' when called get (class)'
  k = new Ka();
  t = new Tap();
  p = new Poom(); 
  s = new Skibidip();
  pop = new Pop();
  anda = new AndA();
  toot = new Tootoot();
  turrr = new Turrr(); 
  p2 = new Poom2();
  sk2 = new Skiah();
  tk = new Tuku();
  kk = new Kokoon(); 
  pp = new Ponpon();
  po = new Poompoom();
  ydk = new YaDunKno();
  big = new BigShaq();
  h = new Huh();
  

  
  size(800, 800);
  
  minim = new Minim(this);                         // Statement function 
  marker1 = minim.loadSample( "Marker1.mp3", 512); // Establishing what file to access when variable is called 
  marker2 = minim.loadSample( "Marker2.mp3", 512);
  marker3 = minim.loadSample( "Marker3.mp3", 512);
  marker4 = minim.loadSample( "Marker4.mp3", 512);
  marker5 = minim.loadSample( "Marker5.mp3", 512);
  marker6 = minim.loadSample( "Marker6.mp3", 512);
  marker7 = minim.loadSample( "Marker7.mp3", 512);
  marker8 = minim.loadSample( "Marker8.mp3", 512); 
  marker9 = minim.loadSample( "Marker9.mp3", 512); 
  marker10 = minim.loadSample( "Marker10.mp3",512);
  marker11 = minim.loadSample( "Marker11.mp3",512);
  marker12 = minim.loadSample( "Marker12.mp3",512);
  marker13 = minim.loadSample( "Marker13.mp3",512);
  marker14 = minim.loadSample( "Marker14.mp3",512);
  marker15 = minim.loadSample( "Marker15.mp3",512);
  marker16 = minim.loadSample( "Marker16.mp3",512);
  marker17 = minim.loadSample( "Marker17.mp3",512);
  marker18 = minim.loadSample( "Marker18.mp3",512);
  
  
  backtrack = minim.loadFile( "RoadmanShaqInstrumental.mp3", 512);

  cp5.addSlider("background")      // Chose the slider so I could access any value between 0 and 255
    .setPosition(20, 20)
    .setSize(20, 100)
    .setRange(0, 255)
    .setValue(0)
    ;

  cp5.addToggle("Track")          // Used the toggle because I wanted the function to be a boolean variable START/PAUSE 
    .setPosition(50, 50)
    .setSize(30, 30)
    .setValue(true);
  ;
}

void draw() 
{
  
  background(background);        //Variable linked to slider, I set up background within 'Draw' so the colour can be updated every frame and clear class displays 

  a.drag();                      // The attractor can be moved and change the direction and velocity of all the other classes 
  a.hover(mouseX, mouseY);
//a.display();                   // Moving the attractor disrupts the orbital field so its better left unseen

  PVector force = a.attract(b);  // PVectors allow the class to access and apply the values for mass, velocity and gravity
  b.applyForce(force);           // This allows the force created by the attractor to be applied to the class and create a magnitude between the two.
  b.update();
  b.display();

  PVector forceP = a.attract(pop); 
  pop.applyForce(forceP);
  pop.update();
  pop.display();

  PVector forces = a.attract(k);
  k.applyForce(forces);
  k.update();
  k.display();

  PVector forcet = a.attract(t);
  t.applyForce(forcet);
  t.update();
  t.display(); 

  PVector forcep = a.attract(p); 
  p.applyForce(forcep);
  p.update();
  p.display(); 

  PVector forceS = a.attract(s); 
  s.applyForce(forceS);
  s.update();
  s.display(); 

  PVector forceT = a.attract(toot); 
  toot.applyForce(forceT);
  toot.update();
  toot.display();
  
  PVector forceA = a.attract(anda); 
  anda.applyForce(forceA);
  anda.update();
  anda.display();
  
  PVector forceR = a.attract(turrr); 
  turrr.applyForce(forceR);
  turrr.update();
  turrr.display();
  
  PVector forceP2 = a.attract(p2); 
  p2.applyForce(forceP2);
  p2.update();
  p2.display();
  
  PVector forceSK = a.attract(sk2); 
  sk2.applyForce(forceSK);
  sk2.update();
  sk2.display();
  
  PVector forceTK = a.attract(tk); 
  tk.applyForce(forceTK);
  tk.update();
  tk.display();
  
  PVector forceK = a.attract(kk); 
  kk.applyForce(forceK);
  kk.update();
  kk.display();
  
  PVector forcePP = a.attract(pp); 
  pp.applyForce(forcePP);
  pp.update();
  pp.display();
  
  PVector forcePO = a.attract(po); 
  po.applyForce(forcePO);
  po.update();
  po.display();
  
  PVector forceY = a.attract(ydk); 
  ydk.applyForce(forceY);
  ydk.update();
  ydk.display();
  
  PVector forceB = a.attract(big); 
  big.applyForce(forceB);
  big.update();
  big.display();
  
  PVector forceH = a.attract(h); 
  h.applyForce(forceH);
  h.update();
  h.display();
 
}

void Track(boolean sound)
{
  if (sound == true) {             // Applying statements to boolean variables
    backtrack.pause();             // Starting boolean value is true and backing track is paused 
  } else { 
    backtrack.play();              // Backing track starts to play when boolean turns false via toggle interaction.
  }
}

void mousePressed()
{
  a.clicked(mouseX, mouseY);      // Allows the attractor to be clicked and moved 
}

void mouseReleased()
{
  a.stopDragging();               // Stops moving the attractor when mouse is not pressed 
}

void keyPressed() 
{
  if (key == 'e' || key == 'E')  
  {
    marker3.trigger();            // Each key is assigned to trigger an audio sample.
    b.pulse();                    // Each key is assigned a class update which applies the trigonometric function changing the size.
  }

  if (key == 'r' || key == 'R' )
  {
    k.pulse();
    marker4.trigger();
  }

  if (key == 'q' || key == 'Q')
  {
    t.pulse();
    marker1.trigger();
  }

  if (key == 'w' || key == 'W')
  {
    p.pulse(); 
    marker2.trigger();
  }

  if (key == 't' || key == 'T')
  {
    s.pulse();
    marker5.trigger();
  }

  if (key == 'y' || key == 'Y')
  {
    pop.pulse();
    marker6.trigger();
  }

  if ( key == 'u' || key == 'U')
  {
    anda.pulse();
    marker7.trigger();
  }

  if ( key == 'i' || key == 'I')
  {
    toot.pulse();
    marker8.trigger();
  }
  
  if ( key == 'o' || key == 'O')
  {
    turrr.pulse();
    marker9.trigger();
  }
  
  if ( key == 'p' || key == 'P')
  {
    p2.pulse();
    marker10.trigger();
  }
  
  if ( key == 'a' || key == 'A')
  {
    sk2.pulse();
    marker11.trigger();
  }
  
  if ( key == 's' || key == 'S')
  {
    tk.pulse();
    marker12.trigger();
  }
  
  if ( key == 'd' || key == 'D')
  {
    kk.pulse();
    marker13.trigger();
  }
  
  if ( key == 'f' || key == 'F')
  {
    pp.pulse();
    marker14.trigger();
  }
  
  if ( key == 'g' || key == 'G')
  {
    po.pulse();
    marker15.trigger();
  }
  
  if ( key == 'h' || key == 'H')
  {
    ydk.pulse();
    marker16.trigger();
  }
  
  if ( key == 'j' || key == 'J')
  {
    big.pulse();
    marker17.trigger();
  }
  
  if ( key == 'k' || key == 'K')
  {
    h.pulse();
    marker18.trigger();
  }  
}