void setup(){
  size(500,500);
  background(0,255,0);
  noStroke();
  smooth();
  
  println(width);
  println(height);
  
  
}

void draw(){
  
  noStroke();
  fill(255);
  triangle(30,30,50,30,40,80);
  
  fill(255,0,0);
  ellipse(120,120,50,50); //(x,y, (size)width, height)
  
  stroke(255);
  strokeWeight(50);
  point(width/2,height/2);
  
  noStroke();
  rectMode(CENTER); //offsetting the placemnt of shapes to the center of the shape
  rect(width/2,height/2,100,60);
  
  

  
}
