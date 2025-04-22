
import processing.serial.*;
int rtButton;
int ltButton;
int upButton;
int dnButton;

int rtButton;
int ltButton;
int upButton;
int dnButton;
int circHeight=75;
int circWidth=75;
int lf = 10;    // Linefeed in ASCII
String myString = null;
Serial myPort;  // The serial port
int[] inData = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
void setup() {
  size(1400, 1200);
  // List all the available serial ports
  printArray(Serial.list());
  // Open the port you are using at the rate you want:
  myPort = new Serial(this, Serial.list()[2], 9600);
  myPort.clear();
  // Throw out the first reading, in case we started reading
  // in the middle of a string from the sender.
  myString = myPort.readStringUntil(lf);
  myString = null;
}


void draw() {
  
  getSerial();
  }


void getSerial()
{
 myPort.write('a');
  while (myPort.available() > 0) {
    myString = myPort.readStringUntil(lf);
    if (myString != null)


    {
      inData = int(trim(split(myString, ',')));
      }
      
    background(255-(inData[0]/4), 255-(inData[1]/4), 255-(inData[2]/4));
      fill(inData[0]/4, inData[1]/4, inData[2]/4);    
  } 
}
//if(mouseX>1250&&mouseX<1320&& mouseY>70&& //mouseY<140&& mousePressed==true)
 // {
//myPort.write('b');
   // delay(140)
// }

int circWidth=75;
int lf = 10;    // Linefeed in ASCII
String myString = null;
Serial myPort;  // The serial port
int[] inData = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
void setup() {
  size(1400, 1200);
  // List all the available serial ports
  printArray(Serial.list());
  // Open the port you are using at the rate you want:
  myPort = new Serial(this, Serial.list()[5], 9600);
  myPort.clear();
  // Throw out the first reading, in case we started reading
  // in the middle of a string from the sender.
  myString = myPort.readStringUntil(lf);
  myString = null;
}


void draw() {
  
  getSerial();
  ellipse(inData[3], inData[4], circHeight, circWidth);
  if(inData[8]==0)
  {
    circWidth =circWidth+1;
  }
  }


void getSerial()
{
 myPort.write('a');
  while (myPort.available() > 0) {
    myString = myPort.readStringUntil(lf);
    if (myString != null)


    {
      inData = int(trim(split(myString, ',')));
      }
      
    background(255-(inData[0]/4), 255-(inData[1]/4), 255-(inData[2]/4));
      fill(inData[0]/4, inData[1]/4, inData[2]/4);    
  } 
}
//if(mouseX>1250&&mouseX<1320&& mouseY>70&& //mouseY<140&& mousePressed==true)
 // {
//myPort.write('b');
   // delay(140)
// }
