float xPos =100, yPos =100;
float xSpeed, ySpeed;
float size = 50;
float r, g, b;
float cr, cg, cb;
float d;
//int sx = 600, sy = 600;

float xs;
float ys;

boolean onoff = false;








void setup()
{

  size(600, 600);

  xSpeed = random(1, 5);
  ySpeed = random(-3, 3);
}




void draw()
{



  g = map(yPos, 0, height, 255, 21);
  b = map(yPos, 0, height, 0, 232);
  

  background (255, g, b);
  

  if (onoff) // boolean to pause circle and to randomize circle speed afer unpausing
  {
    xSpeed = 0;
    ySpeed = 0;

    xs = 0;
    ys = 0;
  } else
  {
    
  }

  

  if (xPos > width - size/2 || xPos < size/2)
  {

    xSpeed = -xSpeed;
    cr = random(0,255);
    cg = random(10,220); 
    
  }
  if (yPos > height - size/2 || yPos < size/2)
  {

    ySpeed = -ySpeed;
    cr = random(0,255);
    cb = random(10,220);  
      
  }
  



  d = dist(mouseX, mouseY, xPos, yPos);




  xPos += xSpeed;
  yPos += ySpeed;


  fill(cr,cg,cb);
  ellipse(xPos, yPos, size, size);
}


void mousePressed()
{

  if (d < size/2)
  {

    onoff = !onoff; 
    
    if(xSpeed == 0)
    {
      size = random(50,150);
    }
    

    xSpeed = random(-5, 5);
    ySpeed = random(-3, 3);
    
    
    
   
  }
}
