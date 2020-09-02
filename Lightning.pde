int startX = 0;
int startY = 0;
int endX = 150;
int endY = 150;

void setup()
{
  size(300,300);
  strokeWeight(3);
  background(20);
}
void draw()
{
  stroke((int)(Math.random() * 9));
  while(startX < 151){
    endX = startX + (int)(Math.random() * 10);
    endY = startY + (int)((Math.random() * 20) - 10);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}
void mousePressed()
{
  int startX = 0;
  int startY = 0;
  int endX = 150;
  int endY = 150;
}
