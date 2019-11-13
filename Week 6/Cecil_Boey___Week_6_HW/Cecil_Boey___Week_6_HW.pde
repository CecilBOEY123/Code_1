int num = 10;
int prob = 2;
int prob2 = 2;
int size[] = new int[num];
float xPos[] = new float[num], yPos[] = new float[num];
float xSpeed[] = new float[num], ySpeed[] = new float[num];
color col[] = new color [num];
int opac[] = new int[num];

String words[] = {"DO", "DON'T DO", "MAYBE DO"};


boolean off;
boolean move;
boolean stat;







void setup()
{

  size(800, 800  );

  off = false;




  for (int i=0; i<num; i++)
  {


    size[i] = floor(random(25, 60));
    xPos[i] = random(size[i]/2, width-size[i]/2);
    yPos[i] = random(size[i]/2, height-size[i]/2);
    xSpeed[i] = random(-5, 5);
    ySpeed[i] = random(-5, 5);
    col[i] = color(random(0, 255), random(120, 255), random(100, 200));
    opac[i] = 255;

    for (int j=i+1; j<num; j++)
    {
      float d2 = (dist(xPos[i], yPos[i], xPos[j], yPos[j]));

      if (d2 <= (size[i]/2+size[j]/2))//Nest setup to prevent overlap spawnin of balls
      {
        xPos[j] = random(size[i]/2 + size[j], width-(size[i]/2 + size[j]));
        yPos[j] = random(size[i]/2 + size[j], height-(size[i]/2 + size[j]));
      }
    }
  }
}

void draw()
{

  background(0);

  textSize(20);
  text("CLICK TO TOGGLE BALL ON/OFF", 220, 200);
  text("TEXT WILL VARIE ACCORDING TO THE NO. OF BALLS YOU STOPPED", 100, 250);

  if (prob2 == prob)//Booleans and variables setup for varaitions of text display upon conditions 
  {
    textSize(20);
    text(words[0] + " HOMEWORK", 300, 400);
  }
  if (prob2 <= prob -5)
  {
    textSize(20);
    text(words[1] + " HOMEWORK", 300, 400);
  }
  if (prob2 <= prob-1 && prob2 >= prob-4)
  {
    textSize(20);
    text(words[2] + " HOMEWORK", 300, 400);
  }



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



    println(prob);


    float d = dist(mouseX, mouseY, xPos[i], yPos[i]);


    if (mousePressed)//boolean setup for the toggling of ball start and pause
    {
      if (d < size[i]/2)
      { 
        if (off)
        {
          xSpeed[i] = random(0, 0);
          ySpeed[i] = random(0, 0);
          prob += 1;
          prob2 += 1;
        } 

        if (move)
        {
          xSpeed[i] = random(-5, 5);
          ySpeed[i] = random(-5, 5);
          prob2 -= 1;
          move = false;
        }
      }
    }







    for (int j = i+1; j < num; j++)//Nest setup for collisions between balls
    {
      float d2 = (dist(xPos[i], yPos[i], xPos[j], yPos[j]));

      if (d2 <=(size[i]/2+size[j]/2)) 
      {
        xSpeed[i] = -xSpeed[i];
        ySpeed[i] = -ySpeed[i];
        xSpeed[j] = -xSpeed[j];
        ySpeed[j] = -ySpeed[j];
      }
    }



    fill(col[i], opac[i]);
    ellipse(xPos[i]+=xSpeed[i], yPos[i]+=ySpeed[i], size[i], size[i]);
  }
}



void mousePressed() //void for boolean setup for the toggling of ball start and pause
{ 

  off = !off;

  if (off == false)
  {
    move = true;
  }
  if (off == true)
  {
    move = false;
  }
}
