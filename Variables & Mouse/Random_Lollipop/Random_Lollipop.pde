int mta = 10;
String hi = "hi";
int posx = 0;







void setup()
{
  size(800,800);
    background(255,255,255);
    frameRate(5);
    noStroke();
  smooth();


    
  
}

void draw() {
  

   background(255,255,255);  
   
    rectMode(CENTER);
    fill(0,255,0);
    rect(300,400,10,150);
    
    rectMode(CENTER);
    fill(0,255,0);
    rect(400,400,10,150);
    
   
    float r=random(50,100);
    
    fill(125,120,199);
    ellipse(300,350,r,r);
    
    
    float e=random(60,90);
   
    fill(125,120,199);
    ellipse(400,350,e,e);  








println(mouseX);
//println(mouseY);

  
}

  
