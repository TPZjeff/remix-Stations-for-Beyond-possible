int timer=0;
int startTime=0;
int endTime=0;
int circX=600;
int circY=400;
void setup()
{
  size(1200, 800);
}

void draw()
{
 
  //circX= int(random(25,1175));
  //circY= int(random(25,775));
  //ellipse(circX, circY, 500, 500);
   //background(128);
   //delay(int(random(1000,4000)));
   //textSize(80);
   //    text("go", 100,100);
  //background(random(255));
  
    if(mousePressed==true)
    {
      endTime=millis();
     
      
      println(endTime-startTime);
      textSize(100);
      text(endTime-startTime, 300,300);
       delay(4000);
       startTime=millis();
       background(random(255));
      
       
    }  
}
