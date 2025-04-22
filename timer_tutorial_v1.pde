// begin Processing code
int startTime=500;
float circX=600;
float circY=400;
int circWidth=40;
int circHeight=40;
void setup()
{
  size(1200, 800);
  startTime = millis();
}

void draw()
{
  background(random(100, 155));
  circX=(random(100, 1100));
  circY=random(100, 700);
  ellipse(circX, circY, circWidth, circHeight);
  delay(3000);
  println(millis());

  if (millis()> (startTime + 8000 ))
  {
    circWidth = circWidth-3;
    circHeight= circHeight-3;
    startTime = millis();
  }
}
