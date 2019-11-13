int yxis;


void setup(){
  size(900,426);
  background(0,0,128);
  noStroke();
  smooth();
  
yxis = 213;
  
  
}

void draw(){
  fill(128,128,128);
  triangle(0,yxis,150,0,300,yxis);
  
  fill(128,128,128);
  triangle(300,yxis,450,0,600,yxis);
  
  fill(128,128,128);
  triangle(600,yxis,750,0,900,yxis);
  
  fill(128,212,255);
  ellipse(width/2,height/2+106.5, 900, yxis);
  
  fill(255,255,0);
  ellipse(width/10+780,height/10,50,50);
  
  //fill(255,255,0);
  //textSize(50);
  //text("OK",width/2,height/2);
  
  
  



  
  

  
}
