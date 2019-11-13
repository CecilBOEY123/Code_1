class Player {

  float bike1x, bike1y;
  int screen;
  int r, g, b;
  float xSpeed, ySpeed; 



  boolean p1up;
  boolean p1down;
  boolean p1left;
  boolean p1right;




  ArrayList<PVector> history;
  PVector current;
  float curx, cury;



  Player(int x, int y)
  {


    bike1x = x;
    bike1y = y;

    r = 0;
    g = 184;
    b = 231;

    history = new ArrayList<PVector>();


    p1up = false;
    p1down = false;
    p1left = false;
    p1right = true;
  }

  void move1()
  {
    bike1x += xSpeed;
    bike1y += ySpeed;
  }


  void drawPlayer1()
  {

    PVector v = new PVector(bike1x, bike1y);
    history.add(v);

    noStroke();
    rectMode(CENTER);

    if (p1up)
    {
      fill(r, g, b);
      rect(bike1x, bike1y-10, 15, 8, 3, 3, 3, 3);
      rect(bike1x, bike1y+10, 15, 5, 2, 2, 2, 2);
      rect(bike1x, bike1y, 10, 20);
      fill(0);
      rect(bike1x, bike1y-2, 6, 10);
    } 
    if (p1down)
    {
      fill(r, g, b);
      rect(bike1x, bike1y+10, 15, 8, 3, 3, 3, 3);
      rect(bike1x, bike1y-10, 15, 5, 2, 2, 2, 2);
      rect(bike1x, bike1y, 10, 20);
      fill(0);
      rect(bike1x, bike1y+2, 6, 10);
    } 
    if (p1left)
    {
      fill(r, g, b);
      rect(bike1x-10, bike1y, 8, 15, 3, 3, 3, 3);
      rect(bike1x+10, bike1y, 5, 15, 2, 2, 2, 2);
      rect(bike1x, bike1y, 20, 10);
      fill(0);
      rect(bike1x-2, bike1y, 10, 6);
    } 
    if (p1right)
    {
      fill(r, g, b);
      rect(bike1x+10, bike1y, 8, 15, 3, 3, 3, 3);
      rect(bike1x-10, bike1y, 5, 15, 2, 2, 2, 2);
      rect(bike1x, bike1y, 20, 10);
      fill(0);
      rect(bike1x+2, bike1y, 10, 6);
    }
  }


  void drawTrail1(boolean x)
  {


    if (x)
    {

      for (int i = 0; i < history.size(); i++)
      {
        current = history.get(i);
        fill(r, g, b);
        rect(current.x, current.y, 5, 5);
      }
    } else
    {
    }
  }
}
