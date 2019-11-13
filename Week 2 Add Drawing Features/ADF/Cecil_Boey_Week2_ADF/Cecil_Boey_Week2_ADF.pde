int brushSize; 
float red;
float g;
float b;
float q;
float w;
float e;






void setup(){
  size(1000, 1000); 
  background(255); 
  brushSize = 10; 
  red = 0;
  g = 255;
  b = 100;
  
  
  
  
  
}

void draw(){
  
  q = random(0,255);
  w = random(50,2);
  e = random(10,220);
  
  fill(255,0,0); 
  textSize(20);
  text("Press R to gradually change color to Red",50,50);
  
  fill(0,255,0); 
  textSize(20);
  text("Press G to gradually change color to Green",50,100);
  
  fill(0,0,255); 
  textSize(20);
  text("Press B to gradually change color to Blue",50,150);
  
  fill(q,w,e); 
  textSize(20);
  text("Press F to change color to Random Colors",50,200);
  
  fill(0,255,100); 
  textSize(20);
  text("Press O to change color to Original Color",50,250);
 
  fill(255, 2); 
  rect(0, 0, width, height); 
  
  
  
  
  if(mousePressed){
  
    switch(key){     // similar to IF statments, but are in constant loop check for IFs
    case 'r':
    red+=5; b-=5; g-=5;
    break;
    
    case 'g':
    red -=5; b-=5; g +=5;
    break;
    
    case 'b':
    red-=5; b+=5; g-=5;
    break;
    
     case 'f':
    red = random(0,255); g = random(0,255); b = random(0,255);
    break;
    
    case 'o':
    red = 0; g=255; b=100;
    break;
    }
    
    
    fill(red, g, b);
    noStroke(); 
    ellipse(mouseX, mouseY, brushSize, brushSize);
    
    if(red<0) red=0;
    if(red>255) red=255;
    if(g<0) g=0;
    if(g>255) g=255;
    if(b<0) b=0;
    if(b>255) b=255;
  
}
   

 
  
  //if(keyPressed){
  //  brushSize += 10; 
  //}
}

void keyPressed(){
  if(key == CODED){
    if(keyCode == UP && brushSize <= 500){
      brushSize += 10; 
    }else if(keyCode == DOWN && brushSize >10){
      brushSize -= 10; 
    }
  }    
    


  
  

    
    
  
}
