float xPos;
float yPos;
float d;
boolean onoff = false;;



 
 void setup()
 {
   
  size(500,500);
  
   
 }
 
 
 void draw()
 {
    


  
  
  if(onoff)
  {
  background(0);
  }
  else
  {
    background (255);
  }
  
  

  
  xPos = width/2;
  yPos = height/2;
  
  fill(100,100,0);
  
  
   if(d < 50)
  {
   
    fill(255,0,0);
  }

  ellipse(xPos, yPos, 100,100);
  
  d = dist(mouseX, mouseY, xPos, yPos);
  
   
   
 }
   
  void mousePressed()
  {
        
 if(d < 50 )
  {
    onoff = !onoff;  
    
  }
  }
 
 
 
