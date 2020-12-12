//your variable declarations here

Spaceship Leo = new Spaceship(); 
Star[] Cass = new Star[200];
Asteroid[] asteroid_list = new Asteroid[20];
ArrayList <Asteroid> Sid = new ArrayList <Asteroid>();
ArrayList <Bullet> bul_list = new ArrayList <Bullet>();
boolean leftTurn = false;
boolean rightTurn = false; 
boolean acc = false; 


public void setup() 
{
  size(700, 600); 
  for (int i = 0; i < Cass.length; i++) {
    Cass[i] = new Star();
  }  
  for (int i = 0; i < asteroid_list.length; i++) {
    Sid.add(new Asteroid());
    Sid.get(i).accelerate(2);
  }
  
}
public void draw() 
{
  background(0);
  
  for (int i = 0; i < Cass.length; i++) {
    Cass[i].show();
  }
  for (int i = 0; i < Sid.size(); i++) {
    Sid.get(i).show();
    Sid.get(i).move();
  }
  for (int i = 0; i < bul_list.size(); i++) {
    bul_list.get(i).show();
    bul_list.get(i).move();
  }
  for (int i = 0; i < Sid.size(); i++) {
    for (int j = 0; j < bul_list.size(); j++) {
      float dis = dist((float)Sid.get(i).getX(), (float)Sid.get(i).getY(),(float)bul_list.get(j).getX(), (float)bul_list.get(j).getY());
                  
      if(dis < 20) {
        Sid.remove(i);
        bul_list.remove(j);
        break;
      }
    }
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
  
  // To reset the asteriods are clear all bullets
  if (Sid.size() == 0) {
    bul_list.clear();
    for (int i = 0; i < 20; i++) {
      Sid.add(new Asteroid());
    }
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
  if (key == 'q') {
    bul_list.add(new Bullet(Leo));
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
