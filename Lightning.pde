int startX = 250;
int startY = 250;
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
  while(startX < 501){
    endX = startX + (int)((Math.random() * 10)-5);
    endY = startY + (int)((Math.random() * 10)-5);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
  numLines++;
  if(numLines >= 20){
    noLoop();
  }else{
  startX = 250;
  startY = 250;
  endX = 0;
  endY = 0;
  }
}
void mousePressed()
{
  fill(1);
  square(0, 0, 1050);
  startX = 250;
  startY = 250;
  endX = 0;
  endY = 0;
}
