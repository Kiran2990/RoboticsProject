#include <Servo.h>

Servo elbow1,elbow2,wrist1,wrist2,gripper;
unsigned long int num=0,value;
int pos,digit,mode;

char ch;

void setup()
{
  Serial.begin(9600);
  
  elbow1.attach(10);
  elbow2.attach(11);
  wrist1.attach(12);
  wrist2.attach(13);
  gripper.attach(A0);
  
  pinMode(2,OUTPUT);
  pinMode(3,OUTPUT);
  pinMode(4,OUTPUT);
  pinMode(5,OUTPUT);
  
  pinMode(6,OUTPUT);
  pinMode(7,OUTPUT);
  pinMode(8,OUTPUT);
  pinMode(9,OUTPUT);
  
}

void loop()
{
  if(Serial.available())
  {  
    delay(5);
    switch(Serial.read())
      { 
        case 'A': Motors(1);
        break;
        
        case 'B':Motors(2);
        break;  
        
        case 'G':gripper.write(00);
        break;
        
        case 'U':gripper.write(90);
        break;
        
        case 'P': moveForward();
               delay(1000);
        break;  
        
        case 'R': turnLeft();
               delay(1000);
        break;  
        
        case 'L': 
               turnRight();
               delay(1000);
        break;  
        
        case 'S':stop();
                delay(1000);
                break;
    }
  }
}

void Motors(int motor_num)
{
    ch=Serial.read();
     
    while(ch!='E')
    {
        digit=(ch-48);
        num=(num*10)+digit;
        delay(5);
        ch=Serial.read();
     } 
     
   switch(motor_num)
   {
      case 1:elbow1.write(num);elbow2.write(num);
      break;
  
      case 2:wrist1.write(num);wrist2.write(180-num);
      break;
    }
  num=0;
}


void moveForward()
{
 digitalWrite(2,HIGH);
 digitalWrite(3,LOW);
 
 digitalWrite(4,HIGH);
 digitalWrite(5,LOW);
 
 digitalWrite(6,HIGH);
 digitalWrite(7,LOW);
 
 digitalWrite(8,HIGH);
 digitalWrite(9,LOW);
}

void turnRight()
{
 digitalWrite(2,LOW);
 digitalWrite(3,HIGH);
 
 digitalWrite(4,HIGH);
 digitalWrite(5,LOW);
 
 digitalWrite(6,HIGH);
 digitalWrite(7,LOW);
 
 digitalWrite(8,LOW);
 digitalWrite(9,HIGH);
}
void turnLeft()
{
 digitalWrite(2,HIGH);
 digitalWrite(3,LOW);
 
 digitalWrite(4,LOW);
 digitalWrite(5,HIGH);
 
 digitalWrite(6,LOW);
 digitalWrite(7,HIGH);
 
 digitalWrite(8,HIGH);
 digitalWrite(9,LOW);
}

void stop()
{
  digitalWrite(2,HIGH);
 digitalWrite(3,HIGH);
 
 digitalWrite(4,HIGH);
 digitalWrite(5,HIGH);
 
 digitalWrite(6,HIGH);
 digitalWrite(7,HIGH);
 
 digitalWrite(8,HIGH);
 digitalWrite(9,HIGH);
}


  
  
  
  

