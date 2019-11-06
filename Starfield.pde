Particle[] joe = new Particle[100];
PImage uhOh;
void setup()
{
  size(300, 300);
  background(0);
  uhOh = loadImage("https://i.kym-cdn.com/photos/images/newsfeed/001/598/769/782.jpg");
  for(int i = 0; i < joe.length; i++)
  {
    joe[i] = new Particle();
  }
  joe[0] = new OddballParticle();
  joe[1] = new OddballParticle();
  joe[2] = new OddballParticle();
}
void draw()
{
  background(0);
  image(uhOh, 100, 100, 80, 80);
  for(int i = 0; i < joe.length; i++)
  {
    joe[i].show();
    joe[i].move();
  }
}
class Particle
{
  double myX, myY, speed, angle;
  int myColor;
  Particle()
  {
   myX = 300;
   myY = 300;
   angle = Math.random() * 2 * Math.PI;
   speed= Math.random() * 6;
   myColor = color((int)(Math.random() * 256),(int)(Math.random() * 256),(int)(Math.random() * 256));    
  }
  
  void show() 
  {
    fill(myColor);
    ellipse((float)myX, (float)myY, 50, 50);
  }
  
  void move()
  {
    myX = myX + Math.sin(angle) * speed;
    myY = myY + Math.cos(angle) * speed;
    if(myX >= 300 || myY >= 300)
    {
      myX = 150;
      myY = 150;
      angle = Math.random() * 2 * Math.PI;
      speed = Math.random() * 10;
    }
    
  }
}

class OddballParticle extends Particle
{
  OddballParticle() 
  {
    myX = 150;
    myY = 150;
    angle = Math.random() * 2 * Math.PI;
    speed = (Math.random() * 5);
  }
  void show()
  {
    fill((int)Math.random() * 255, (int)Math.random() * 255, (int)Math.random() * 255);
    ellipse((float)myX, (float)myY, 50, 50);
  }
  void move()
  {
     myX = myX + Math.sin(angle) * speed;
    myY = myY + Math.cos(angle) * speed;
    if(myX >= 300 || myY >= 300)
    {
      myX = 150;
      myY = 150;
      angle = Math.random() * 2 * Math.PI;
      speed = Math.random() * 10;
      fill((int)Math.random() * 255, (int)Math.random() * 255, (int)Math.random() * 255);
  }
  }
}
