class Bullet extends Floater {
   public Bullet(Spaceship theShip) {
     myCenterX = theShip.getXPos();
     myCenterY = theShip.getYPos();
     myPointDirection = theShip.getPointDirection();
     accelerate(5);
     myColor = color(255, 0 , 0);
   }
   public void show() {
     super.show();
     ellipse((float)(myCenterX), (float)(myCenterY), 15, 15);
   }
   public void move() {
     myCenterX += myXspeed;    
     myCenterY += myYspeed;   
   }
   public double getX() {
     return (myCenterX);
   }
   public double getY() {
     return (myCenterY);
   }
  
}
