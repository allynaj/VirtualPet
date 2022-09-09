import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

public void setup() {
  size(400, 400);
  arduino = new Arduino(this, Arduino.list()[0], 57600); //change the [0] to a [1] or [2] etc. if your program doesn't work
}

public void draw() {
  background(0);
  int y = arduino.analogRead(5);
  int r = arduino.analogRead(1);
  int l = arduino.analogRead(6);
  System.out.println(y + "   " + l + "   " + r);
  //ellipse(250, 2*y, 50, 50);
  
  //feathers
  noStroke();
  fill(0,y,75); //how to randomize w light input
  //arc(200,200,200,200,3.15,PI/0.5);
  arc(200,200,y+30,y+30,3.15,PI/0.5);
  fill(0,y,120);
  arc(200,200,y-15,y-15,3.15,PI/0.5);
  fill(0,y,190);
  arc(200,200,y-60,y-60,3.15,PI/0.5);
  
  //feet
  fill(255,170,50);
  rect(180,220,8,60);
  rect(210,220,8,60);
  rect(175,280,15,7);
  rect(208,280,15,7);
  
  //body
  fill(0,120,255);
  ellipse(200,200,75,100);
  
  //wings
  fill(0,95,255);
  if(r>=1023)
    triangle(120,180,170,175,165,200);
  if(l>=1023)
    triangle(280,180,230,175,235,200);    
  
  //neck
  fill(0,120,255);
  rect(187,115,25,50);
    
  //head
  fill(0,120,255);
  ellipse(200,100,50,50);
  
  //beak
  fill(255,190,50);
  triangle(200,130,190,110,210,110);
  
  //eyes
  if (y>=180) {
    fill(255,255,255);
    ellipse(190,100,30,30);
    ellipse(210,100,30,30);
    fill(0,0,0);
    ellipse(190,100,20,20);
    ellipse(210,100,20,20);
  } else {
    fill(0,95,255);
    ellipse(190,100,30,30);
    ellipse(210,100,30,30);
  }
}
