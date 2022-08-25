void setup(){
  size(400,400);
}

void draw(){
  //feathers
fill(0,250,120);
arc(200,200,200,200,3.15,PI/0.5);

//feet
fill(255,190,50);
rect(180,220,8,60);
rect(210,220,8,60);
rect(175,280,15,7);
rect(208,280,15,7);

//body
fill(0,120,255);
ellipse(200,200,75,100);
  
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
fill(255,255,255);
ellipse(190,100,30,30);
ellipse(210,100,30,30);
fill(0,0,0);
ellipse(190,100,20,20);
ellipse(210,100,20,20);
}
