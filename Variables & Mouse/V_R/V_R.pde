int mta = 10;
String hi = "hi";
int posx = 0;




void setup()
{
  size(800,800);
    background(0);
    frameRate(60);
    
    
  
}
  
void draw() {
  

   background(0);  
  
  ellipse(posx,mouseY, mta,500);
  
mta = mta+1;
posx = posx+1;

float r = random(0,800);


  ellipse(r,mouseY, 500,500);

  textSize(100);
  text(hi,200,200);
  

println(mouseX);
//println(mouseY);

  
}

  
