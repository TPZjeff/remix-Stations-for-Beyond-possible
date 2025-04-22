int count=0;
void setup()
{
  size(1200, 800);
}
void draw()
{

  background(128);
  textSize(100);
  text(count, 560, 225);
}
void keyPressed()
{
  if (keyPressed==true && key=='a')
  {
    count = count+1;
    delay(80);
  }
  if (keyPressed==true && key=='d')
  {
    count = count-1;
    delay(80);
  }
  if (count >= 12)
  {
    count=0;
  }
}
