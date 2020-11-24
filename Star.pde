class Star //note that this class does NOT extend Floater
{
  private int myX, myY; 
  public Star() {
    myX = (int)(Math.random() * 700);
    myY = (int)(Math.random() * 600);
  }  
  public void show() {
    fill((int)(Math.random() * 350), (int)(Math.random() * 350), (int)(Math.random() * 350));
    ellipse(myX, myY, 3, 3);
  }  
}
