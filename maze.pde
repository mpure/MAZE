/* @pjs preload="maze.jpg"; */
PImage img;
int ballx,bally;
boolean 
  cracka = false,
  cracks = false,
  crackd = false,
  crackw = false;
int rad = 15;
color c5;

void setup()
{
  size(700,700);
  img = loadImage("maze.jpg");
  ballx = 16;
  bally = 622;
  c5 = img.get(32,32);

}

void draw()
{
  image(img,0,0);
  fill(255,100,10);
  ellipse(ballx,bally,rad,rad);
  cracka = false;
  cracks = false;
  crackd = false;
  crackw = false;
  for (int i=1;i<rad;i++){
    if (img.get(ballx+i,bally) == c5 && !crackd) crackd = true;
    if (img.get(ballx-i,bally) == c5 && !cracka) cracka = true;
    if (img.get(ballx,bally+i) == c5 && !cracks) cracks = true;
    if (img.get(ballx,bally-i) == c5 && !crackw) crackw = true;
  }
  //fill();
  //ellipse(ballx,bally,);
}

void keyPressed()
{
  if (key == 'w' && !crackw) bally-=5;
  if (key == 's' && !cracks) bally+=5;
  if (key == 'a' && !cracka) ballx-=5;
  if (key == 'd' && !crackd) ballx+=5;
}


