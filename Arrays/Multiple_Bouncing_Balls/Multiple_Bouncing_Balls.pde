int num = 100;
int size[] = new int[num];
float xPos[] = new float[num], yPos[] = new float[num];
float xSpeed[] = new float[num], ySpeed[] = new float[num];
color col[] = new color [num];
int opac[] = new int[num];






void setup()
{

  size(800, 800);

  for (int i=0; i<num; i++)
  {

    size[i] = floor(random(25, 100));
    xPos[i] = random(size[i]/2, width-size[i]/2);
    yPos[i] = random(size[i]/2, height-size[i]/2);
    xSpeed[i] = random(-5, 5);
    ySpeed[i] = random(-5, 5);
    col[i] = color(20, random(120, 255), random(100, 200));
    opac[i] = 255;
    
  }
}

void draw()
{

  background(255);

  for (int i = 0; i < num; i++)
  {



    if (xPos[i] <= size[i]/2 || xPos[i] >= width - size[i]/2)
    {
      xSpeed[i] = -xSpeed[i];
    }
    if (yPos[i] <= size[i]/2 || yPos[i] >= height - size[i]/2)
    {
      ySpeed[i] = -ySpeed[i];
    }

    float d = dist(mouseX, mouseY, xPos[i], yPos[i]);

    if (d < size[i]/2)
    {
      opac[i] = 0;
    }
     
     if(keyPressed)
     {
      opac[i] = 255; 
     }


    fill(col[i], opac[i]);
    ellipse(xPos[i]+=xSpeed[i], yPos[i]+=ySpeed[i], size[i], size[i]);
  }
}
