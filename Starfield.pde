Particle [] stars;
void setup()
{
  background(0);
  size(500, 500);
  stars = new Particle[500];
   for(int i = 0; i < stars.length; i++){
   stars[0] = new OddballParticle();
   stars[1] = new OddballParticle();
   stars[2] = new OddballParticle();
   stars[i] = new Particle(250, 250);
  }
}
void draw()
{
  for(int i = 0; i < stars.length; i++){
  stars[i].show();
  stars[i].move();
  }
}

class Particle
{
  double myX, myY, myAngle, mySpeed;
  int myColorR, myColorG, myColorB;
  Particle(int x, int y)
  {
   myX = x;
   myY = y;
   mySpeed = (Math.random()*15);
   myAngle = (int)(Math.random()*1000);
   myColorR = (int)(Math.random()*255);
   myColorG = (int)(Math.random()*255);
   myColorB = (int)(Math.random()*255);
   
   
  }
  void move(){
    myX = myX + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.sin(myAngle)*mySpeed;
  }
  void show(){
    fill(myColorR, myColorG, myColorB);
    ellipse((float)myX, (float)myY, 3, 3);
  }
}

class OddballParticle extends Particle
{
   OddballParticle(){
   super (500,500);
   myX = 250;
   myY = 250;
   myAngle = (int)(Math.random()*1000);
   mySpeed = (Math.random()*3);
   myColorR = (int)(Math.random()*120);
   myColorG = 200;
   myColorB = (int)(Math.random()*120);
}
  void move(){
    myX = myX + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.sin(myAngle)*mySpeed;
  }
  void show(){
    fill(myColorR, myColorG, myColorB);
    ellipse((float)myX, (float)myY, 30, 30);
  }
}

