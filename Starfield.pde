Particle[] parts = new Particle[1000];
Star[] stars = new Star[1000];
void setup()
{
  size(600, 600);
  for(int i = 0; i < parts.length; i++)
  {
    parts[i] = new Particle();
    parts[998] = new OddballParticle();
    parts[999] = new secondOddball();
    stars[i] = new Star();
  }
}
void draw()
{
  background(27, 18, 70);
  for(int i = 0; i < parts.length; i++)
  {
    parts[i].show();
    parts[i].move();
    stars[i].show();
    stars[i].move();
  }
}
class Particle
{
  double myX;
  double myY;
  int myColor;
  double myAngle;
  double mySpeed;
  int mySize;
  PImage img;
  Particle()
  {
    myX = 300;
    myY = 300;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*8;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*240));
    mySize = (int)(Math.random()*10);
  }
  void move()
  {
    myX = myX + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.sin(myAngle)*mySpeed;
    mySize = mySize + (int)(Math.random()*3)-1;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*240));
    if(mousePressed ==  true)
    {
      myX = mouseX;
      myY = mouseY;
      mySize = 10;
    }
  }
  void show()
  {
    fill(myColor);
    noStroke();
    ellipse((float)myX, (float)myY, mySize, mySize);
  }
}
class OddballParticle extends Particle
{
  OddballParticle()
  {
    myX = 300;
    myY = 300;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*2;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*240));
    mySize = (int)(Math.random()*70)+50;
    img = loadImage("blue.png");
  }
  void move()
  {
    myX = myX + Math.cos(myAngle)*5;
    myY = myY + Math.sin(myAngle)*5;
    if(mousePressed == true)
    {
      myX = mouseX;
      myY = mouseY;
    }
  }
  void show()
  {
    image(img, (float)myX, (float)myY, 1.5*mySize, mySize);
  }
}
class secondOddball extends Particle
{
  secondOddball()
  {
    myX = 300;
    myY = 300;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*2;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*240));
    mySize = (int)(Math.random()*20)+50;
    img = loadImage("cyanamongus.png");
  }
  void move()
  {
    myX = myX + Math.cos(myAngle)*5;
    myY = myY + Math.sin(myAngle)*5;
    if(mousePressed == true)
    {
      myX = mouseX;
      myY = mouseY;
    }
  }
  void show()
  {
    image(img, (float)myX, (float)myY, 0.789*mySize, mySize);
  }
}
class Star
{
  int myX;
  int myY;
  double myAngle;
  double mySpeed;
  Star()
  {
    myX = 300;
    myY = 300;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*8;
  }
  void move()
  {
    myX = myX + (int)(Math.cos(myAngle)*mySpeed);
    myY = myY + (int)(Math.sin(myAngle)*mySpeed);
    if(mousePressed == true)
    {
      myX = mouseX;
      myY = mouseY;
    }
  }
  void show()
  {
    fill(255);
    noStroke();
    ellipse(myX, myY, 5, 5);
  }
}
