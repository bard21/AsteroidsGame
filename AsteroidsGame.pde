//your variable declarations here
Spaceship Leo = new Spaceship(); 
Star[] Cass = new Star[200]; 
boolean leftTurn = false;
boolean rightTurn = false; 
boolean acc = false; 

public void setup() 
{
  size(700, 600); 
  for (int i = 0; i < Cass.length; i++) {
    Cass[i] = new Star();
  }  
}
public void draw() 
{
  background(0);
  for (int i = 0; i < Cass.length; i++) {
    Cass[i].show();
  }
  Leo.show();
  Leo.move();
  
  if (leftTurn == true) {
    Leo.turn(-5.0);
  }
  if (rightTurn == true) {
    Leo.turn(5.0); 
  }
  if (acc == true) {
    Leo.accelerate(0.1); 
  }
  
}
public void keyPressed() {
  if(key == 'a') {
     leftTurn = true; 
  }  
  if(key == 'd') {
     rightTurn = true;
  }  
  if(key == 'w') {
     acc = true; 
  }  
  if(key == 'f') {
     Leo.hyperspace(0, 0);
  }  
}

public void keyReleased() {
  if(key == 'a') {
     leftTurn = false; 
  }  
  if(key == 'd') {
     rightTurn = false;
  }  
  if(key == 'w') {
     acc = false; 
  }  
}
