void setup()
{

size(800,800);
background(255,255,255);
frameRate(10);


}

void draw()

{
  
  
  
  float r=random(0,255);
  float e=random(0,255);
  


  
  
if(mousePressed) {
  fill(r,e,255);
} else {
  fill(255,0,0);
}

  rect(100,100,r,e);
  

  
if(mousePressed) {
  fill(r,e,255);
} else {
  fill(255,0,0);
}

  rect(400,400,-r,-e);
  


}
