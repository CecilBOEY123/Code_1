int size = 20;
int cols, rows;
int chbd = 50;

void setup()
{

  size(800, 600);
  cols = width/size;
  rows = height/size;
  rectMode(CENTER);
  noStroke();
}

void draw()
{

  // Codes for the Checkerboard Background
  
  float b = map(mouseX, 0, width, 140, 10);
  float g = map(mouseY, 0, height, 100, 10);

  for (int w = 0; w < width; w += chbd) 
  { 
    for (int h = 0; h < height; h += chbd) 
    { 

      if ((w+h) % 20 ==0) {  
        fill(200, g, b);
      } else { 
        fill(0, 0, 0);
      } 
      rect (w+25, h+25, chbd, chbd);
    }
  }


//Codes for the Pattern - From Figure 40.5 on Page 143

  for (int i=0; i<cols; i++)
  {
    for (int j=0; j<rows; j++)
    {

      float d = dist(mouseX, mouseY, i*size + size/2, j*size + size/2);

      //float s = map(d, 0, width, 45, 90);
      float s2 = map(d, 0, width, 2, 40);


      translate(2*i*size+size/2, j*size+size/2);

      fill(3, 185, 240);
      rotate(45);
      rect(0, 0, s2, size+2);
      resetMatrix();
    }
  }

  for (int i=0; i<cols; i++)
  {
    for (int j=0; j<rows; j++)
    {

      translate(2*i*size+size/2+size, j*size+size/2);

      fill(255); 
      rotate(-45);
      rect(0, 0, 5, size+2);
      resetMatrix();
    }
  }
}
