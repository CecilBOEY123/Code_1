int size = 50; 
float xPos = size/2, yPos; 
int xDirection = 1; 
float theta; 
float ampl; 

void setup()
{
size(800, 600); 

}


void draw()
{
background(0); 

float m = map(xPos,0,800,0,600);

theta += .05; 


if(xPos + size/2 > 800)
{
  xDirection = -1;
}
if(xPos - size/2 < 0)
{
  xDirection = 1;
}
//create boundaries for your xPos 

xPos += xDirection; 

//use the map function for ampl 

//fix yPos 
yPos = sin(theta)*m/2 + 300; 

fill(255); 
ellipse(xPos, yPos, size, size); 
}
