class Asteroid extends Floater {
  
   private double rotation_speed;
 
   public Asteroid() {
     rotation_speed = (Math.random() * 5);
     corners = 8;
     xCorners = new int[corners];
     yCorners = new int[corners];
     
     xCorners[0] = (int)myCenterX - 12;
     yCorners[0] = (int)myCenterY - 12;
     xCorners[1] = (int)myCenterX + 12;
     yCorners[1] = (int)myCenterY - 12;
     xCorners[2] = (int)myCenterX + 8;
     yCorners[2] = (int)myCenterY - 2;
     xCorners[3] = (int)myCenterX + 10;
     yCorners[3] = (int)myCenterY;
     xCorners[4] = (int)myCenterX + 10;
     yCorners[4] = (int)myCenterY + 9;
     xCorners[5] = (int)myCenterX;
     yCorners[5] = (int)myCenterY + 12;
     xCorners[6] = (int)myCenterX - 5;
     yCorners[6] = (int)myCenterY + 7;
     xCorners[7] = (int)myCenterX - 11; 
     yCorners[7] = (int)myCenterY - 3;
     
     myColor = color(255, 255, 255);
     myCenterX = (Math.random() * 700);
     myCenterY = (Math.random() * 600);
     myXspeed = (Math.random() * 3) - 1.5;
     myYspeed = (Math.random() * 3) - 1.5; 
     myPointDirection = (int)(Math.random() * 360);
   }  
   
  public void show(){
        turn(rotation_speed);
        super.show();
  }
  
  public double getX() {
    return (myCenterX);
  }
  
  public double getY() {
    return (myCenterY);
  }
  
  public void move() {
    turn(rotation_speed);
    super.move();
  }
}
