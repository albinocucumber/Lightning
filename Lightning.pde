int startX = 500;
int startY = 500;
int endX = 0;
int endY = 0;
int numLines = 1;

void setup()
{
  size(500,500);
  strokeWeight(3);
  background(1);
  frameRate(30);
}
void draw()
{
  stroke((int)(Math.random() * 256),(int)(Math.random() * 256),(int)(Math.random() * 256));
  while(startX < 1001){
    endX = startX + (int)((Math.random() * 10)-5);
    endY = startY + (int)((Math.random() * 10)-5);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
  numLines++;
  if(numLines >= 10){
    noLoop();
  }else{
  startX = 500;
  startY = 500;
  endX = 150;
  endY = 150;
  }
}
void mousePressed()
{
  fill(1);
  square(0, 0, 1050);
  startX = 500;
  startY = 500;
  endX = 0;
  endY = 0;
}
