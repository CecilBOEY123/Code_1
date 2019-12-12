PVector position; 
PVector velocity; 
PVector gravity; 

int ground = 400; 
boolean jumping = false; 
boolean pressed; 

void setup()
{
size(600, 600); 
rectMode(CENTER); 

jumping = false;

position = new PVector(300, ground);
velocity = new PVector(0, 0);
gravity = new PVector(0, 1);
//initialize values for your PVectors. HINT your y position should be the ground, initially the square is not moving, and gravity only accelerates in the y direction

noStroke(); 
}

void draw()
{
background(28, 128, 255); 

fill(28, 255, 170); 
rect(width/2, ground+125, width, 200); 

  move();

if(jumping)
{   
  addGravity();
} 




fill(255); 
rect(position.x, position.y, 50, 50); 

println (jumping);
}




void keyPressed()
{
  if(key == CODED)
  {
    if(keyCode == UP)
    {
    //conditional statement, if the square is not already jumping => then jump
      if(jumping == false)
      {
      jump();
      }
      else
      {
      }
     
    }
  }
}  

void move(){ 
 position.add(velocity); 
//update your position 
//apply gravity 
}

void jump(){
velocity.y = -15; 
velocity.add(gravity); 
jumping = true; 
}

void addGravity(){
if(position.y < ground)
{
velocity.add(gravity); 
}
else
{
position.y = ground; 
velocity.y = 0; 
jumping = false; 
}
}
