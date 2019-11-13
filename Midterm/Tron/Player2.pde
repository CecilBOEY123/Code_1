class Player2 {


  int bike2x, bike2y;
  float xSpeed2, ySpeed2; 


  boolean p2up;
  boolean p2down;
  boolean p2left;
  boolean p2right;


  ArrayList<PVector> history2;


  Player2()
  {
   

    bike2x = 100;
    bike2y = 100;

    
    history2 = new ArrayList<PVector>();


    
    p2up = false;
    p2down = false;
    p2left = true;
    p2right = false;
  }


  
  void bouncheck2()
  {
    if (p2up)
    {
      if (bike2y - 14 < 0)
      {

        ySpeed2 = 0;
      }
    }
    if (p2down)
    {
      if (bike2y + 14 > height)
      {

        ySpeed2 = 0;
      }
    }
    if (p2left)
    {
      if (bike2x - 14 < 0)
      {

        xSpeed2 = 0;
      }
    }
    if (p2right)
    {
      if (bike2x + 14 > width)
      {

        xSpeed2 = 0;
      }
    }
  }

  void move2()
  {


    bike2x += xSpeed2;
    bike2y += ySpeed2;
  }


  void drawPlayer2()
  {

    PVector z = new PVector(bike2x, bike2y);
    history2.add(z);

    noStroke();
    rectMode(CENTER);

    if (p2up)
    {
      fill(0, 184, 231);
      rect(bike2x, bike2y-10, 15, 8, 3, 3, 3, 3);
      rect(bike2x, bike2y+10, 15, 5, 2, 2, 2, 2);
      rect(bike2x, bike2y, 10, 20);
      fill(0);
      rect(bike2x, bike2y-2, 6, 10);
    } 
    if (p2down)
    {
      fill(0, 184, 231);
      rect(bike2x, bike2y+10, 15, 8, 3, 3, 3, 3);
      rect(bike2x, bike2y-10, 15, 5, 2, 2, 2, 2);
      rect(bike2x, bike2y, 10, 20);
      fill(0);
      rect(bike2x, bike2y+2, 6, 10);
    } 
    if (p2left)
    {
      fill(0, 184, 231);
      rect(bike2x-10, bike2y, 8, 15, 3, 3, 3, 3);
      rect(bike2x+10, bike2y, 5, 15, 2, 2, 2, 2);
      rect(bike2x, bike2y, 20, 10);
      fill(0);
      rect(bike2x-2, bike2y, 10, 6);
    } 
    if (p2right)
    {
      fill(0, 184, 231);
      rect(bike2x+10, bike2y, 8, 15, 3, 3, 3, 3);
      rect(bike2x-10, bike2y, 5, 15, 2, 2, 2, 2);
      rect(bike2x, bike2y, 20, 10);
      fill(0);
      rect(bike2x+2, bike2y, 10, 6);
    }
  }


  void drawTrail2()
  {

    for (int i = 0; i < history2.size(); i++)
    {
      PVector current = history2.get(i);
      fill(255);
      rect(current.x, current.y, 10, 10);
    }
  }



  void keyPressed()
  {


    
    
    if (keyCode == UP)
    {
      p2up = true; 
      p2down = false; 
      p2left = false; 
      p2right = false;

      ySpeed2 = -3;
      xSpeed2 = 0;
    }
     else if (keyCode == DOWN)
    {
      p2up = false; 
      p2down = true; 
      p2left = false; 
      p2right = false;

      xSpeed2 = 0;
      ySpeed2 = 3;
    }
   else if (keyCode == LEFT)
    {
      p2up = false; 
      p2down = false; 
      p2left = true; 
      p2right = false;

      ySpeed2 = 0;
      xSpeed2 = -3;
    }
    else if (keyCode == RIGHT)
    {

      p2up = false; 
      p2down = false; 
      p2left = false; 
      p2right = true;

      xSpeed2 = 3;
      ySpeed2 = 0;
    }
  }
}
