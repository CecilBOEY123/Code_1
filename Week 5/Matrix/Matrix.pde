float theta = 0;

void setup()
{

  size(600, 600);
  rectMode(CENTER);
   
}
  
void draw()
{
  background(255);    

  noFill();
  
  pushMatrix();
  theta ++;
  translate(width/2, height/2);
  rotate(radians(theta));
  scale(2);
  rect(0,0,100,100);
  popMatrix();


  pushMatrix();
  translate(width/2, height/2);
  
  scale(2);  
  for(int i=0; i <100; i++)
  {
  rotate(radians(-theta+i));
  rect(0, 0, i*2, i*2);
  }
  popMatrix();
  
  
  
}
