
class Spaceship extends Floater  
{ 
  public Spaceship() {
    corners = 12;
    xCorners = new int[corners];
    yCorners = new int[corners];

    // body 
    xCorners[0] = -40;
    yCorners[0] = -35;
    xCorners[1] = 50;
    yCorners[1] = -35;
    xCorners[2] = 0;
    yCorners[2] = -25;
    xCorners[3] = 60;
    yCorners[3] = 0;
    xCorners[4] = 0;
    yCorners[4] = 25;
    xCorners[5] = 50;
    yCorners[5] = 35;
    xCorners[6] = -40;
    yCorners[6] = 35;
    xCorners[7] = 0;
    yCorners[7] = 25;
    xCorners[8] = -30;
    yCorners[8] = 20;    
    xCorners[9] = -30;
    yCorners[9] = -20;
    xCorners[10] = 0;
    yCorners[10] = -25;
    xCorners[11] = -40;
    yCorners[11] = -35;
 
    myColor = color(79, 141, 151);
    myCenterX = 350;
    myCenterY = 300;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
    
  }
  public void setSpeed(double x, double y) {
    myXspeed = x;
    myYspeed = y;
  }  
  public void setRandPos() {
    myCenterX =(Math.random() * 600);
    myCenterY =(Math.random() * 500);
    myPointDirection = (Math.random() * 360);
  }  
  
  public void hyperspace(double x, double y) {
    setSpeed(x, y);
    setRandPos();
  }
  
  public float getXPos() {
    return ((float)(myCenterX));  
  }
  public float getYPos() {
    return ((float)(myCenterX));
  }
}
