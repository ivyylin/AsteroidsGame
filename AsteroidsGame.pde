//your variable declarations here
Star[] nightSky = new Star[200];
Spaceship mrChan = new Spaceship();
public void setup()
{
  size(500,500);
  background(0);
  for(int i=0; i<nightSky.length;i++)
  {
    nightSky[i] = new Star ();
  }
}
    public void draw()
    {
      background(0);
      for(int i =0; i<nightSky.length; i++)
      {
        nightSky[i].show();
      }
      if (keyPressed){
        if (key == 'a' || key == 'A'){
          mrChan.turn(-10);
        }
        if (key == 's'){
          mrChan.accelerate(-0.4);
        }
        if(key == 'd'){
         mrChan.turn(10);
      }
      if(key == 'w'){
         mrChan.accelerate(0.4); 
      }
      if(key == 'z'){
        mrChan.hyperspace();
      }
      }
      mrChan.show();
      mrChan.move();
    }
