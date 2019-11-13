Player[] myplayer = new Player[2];
int screen = 0;
int count1 = 0, count2 = 0;

PImage intro, level1, end;

void setup()
{

  size(800, 800);

  intro = loadImage("introscreen.jpg");
  level1 = loadImage("level1.jpg");
  end = loadImage("end.jpg");

  myplayer[0]=new Player(15, 10);
  myplayer[1]=new Player(780, 790);
  myplayer[1].p1left = true; 
  myplayer[1].p1right = false;
}

void draw() 
{ 

  myplayer[1].r = 255; 
  myplayer[1].g = 68; 
  myplayer[1].b = 0; 



  switch(screen)
  {
  case 0: 
    startscreen(); 
    break;
  case 1: 
    level1(); 
    break;
  case 2: 
    score(); 
    break;
  case 3:
    endscreen(); 
    break;
  }
}

void startscreen()
{
  background(0);

  image(intro, 0, 0);


  textAlign(CENTER);
  textSize(40);
  fill(255, 0, 0);
  text("FIRST TO 9 WINS", 400, 690);
}

void level1()
{
  background(0);

  image(level1, 0, 0);


  if (count1 >= 6 || count2 >= 6 || count1 + count2 >= 6)
  {
    textAlign(CENTER);
    textSize(20);
    fill(0, 184, 231);
    text("P1 PRESS SHIFT TO DECELERATE", 200, 50);

    textAlign(CENTER);
    textSize(20);
    fill(255, 68, 0);
    text("P2 PRESS CTRL TO DECELERATE", 600, 50);
  }

  boundcheck1();

  for (int i=0; i<2; i++)
  {
    myplayer[i].move1();
    if (myplayer[i].xSpeed == 0 && myplayer[i].ySpeed == 0)
    {
      myplayer[i].drawTrail1(false);
    } else
    {
      myplayer[i].drawTrail1(true);
    }
    myplayer[i].drawPlayer1();
  }


  for (int i = 0; i < myplayer[1].history.size(); i++)
  {
    //for (int j = 20; j < myplayer[1].history.size(); j++)
    {
      myplayer[1].current = myplayer[1].history.get(i);
      myplayer[0].current = myplayer[0].history.get(i);
      if (dist(myplayer[0].bike1x, myplayer[0].bike1y, myplayer[1].current.x, myplayer[1].current.y)<5)
      {
        count2 += 1;
        screen = 2;
      }
      if (dist(myplayer[1].bike1x, myplayer[1].bike1y, myplayer[0].current.x, myplayer[0].current.y)<5)
      {
        count1 += 1;
        screen = 2;
      }


      if (myplayer[1].p1up)
      {
        if (dist(myplayer[1].bike1x, myplayer[1].bike1y, myplayer[1].current.x, myplayer[1].current.y + 5)<5)
        {
          count1 += 1;
          screen = 2;
        }
      }
      if (myplayer[1].p1down)
      {
        if (dist(myplayer[1].bike1x, myplayer[1].bike1y, myplayer[1].current.x, myplayer[1].current.y - 5)<5)
        {
          count1 += 1;
          screen = 2;
        }
      }
      if (myplayer[1].p1left)
      {
        if (dist(myplayer[1].bike1x, myplayer[1].bike1y, myplayer[1].current.x + 5, myplayer[1].current.y)<5)
        {
          count1 += 1;
          screen = 2;
        }
      }
      if (myplayer[1].p1right)
      {
        if (dist(myplayer[1].bike1x, myplayer[1].bike1y, myplayer[1].current.x - 5, myplayer[1].current.y)<5)
        {
          count1 += 1;
          screen = 2;
        }
      }

      if (myplayer[0].p1up)
      {
        if (dist(myplayer[0].bike1x, myplayer[0].bike1y, myplayer[0].current.x, myplayer[0].current.y + 5)<5)
        {
          count2 += 1;
          screen = 2;
        }
      }
      if (myplayer[0].p1down)
      {
        if (dist(myplayer[0].bike1x, myplayer[0].bike1y, myplayer[0].current.x, myplayer[0].current.y - 5)<5)
        {
          count2 += 1;
          screen = 2;
        }
      }
      if (myplayer[0].p1left)
      {
        if (dist(myplayer[0].bike1x, myplayer[0].bike1y, myplayer[0].current.x + 5, myplayer[0].current.y)<5)
        {
          count2 += 1;
          screen = 2;
        }
      }
      if (myplayer[0].p1right)
      {  
        if (dist(myplayer[0].bike1x, myplayer[0].bike1y, myplayer[0].current.x - 5, myplayer[0].current.y)<5)
        {
          count2 += 1;
          screen = 2;
        }
      }
    }
  }
}


void score()
{
  background(0);

  image(level1, 0, 0);


  textAlign(CENTER);
  textSize(40);
  fill(0, 184, 231);
  text("PLAYER 1 SCORE:", 200, 150);
  textSize(200);
  text(count1, 200, 500);

  textAlign(CENTER);
  textSize(40);
  fill(255, 68, 0);
  text("PLAYER 2 SCORE:", 600, 150);
  textSize(200);
  text(count2, 600, 500);

  textAlign(CENTER);
  textSize(40);
  fill(255, 0, 0);
  text("PRESS B TO CONTINUE", 400, 680);
}


void endscreen()
{
  background(0);

  image(end, 0, 0);
}

void boundcheck1()
{

  if (myplayer[0].p1up)
  {
    if (myplayer[0].bike1y - 14 < 0)
    {
      screen = 2;
      count2 += 1;
    }
  }
  if (myplayer[0].p1down)
  {
    if (myplayer[0].bike1y + 14 > height)
    {
      screen = 2;
      count2 += 1;
    }
  }
  if (myplayer[0].p1left)
  {
    if (myplayer[0].bike1x - 14 < 0)
    {
      screen = 2;
      count2 += 1;
    }
  }
  if (myplayer[0].p1right)
  {
    if (myplayer[0].bike1x> width - 14)
    {
      screen = 2;
      count2 += 1;
    }
  }

  if (myplayer[1].p1up)
  {
    if (myplayer[1].bike1y - 14 < 0)
    {
      screen = 2;
      count1 += 1;
    }
  }
  if (myplayer[1].p1down)
  {
    if (myplayer[1].bike1y + 14 > height)
    {
      screen = 2;
      count1 += 1;
    }
  }
  if (myplayer[1].p1left)
  {
    if (myplayer[1].bike1x - 14 < 0)
    {
      screen = 2;
      count1 += 1;
    }
  }
  if (myplayer[1].p1right)
  {
    if (myplayer[1].bike1x> width - 14)
    {
      screen = 2;
      count1 += 1;
    }
  }
}


void keyPressed() 
{



  if (screen == 0)
  {
    if (keyCode == ' ')
    {
      screen = 1;

      myplayer[0]=new Player(15, 10);
      myplayer[1]=new Player(780, 790);
      myplayer[1].p1left = true; 
      myplayer[1].p1right = false;
    }
  }

  if (screen == 2)
  {
    if (count1 >= 9 || count2 >= 9)
    {
      if (keyCode == 'B')
      {
        screen = 3;
      }
    } else
    {
      if (keyCode == 'B')
      {
        screen = 1;

        myplayer[0]=new Player(15, 10);
        myplayer[1]=new Player(780, 790);
        myplayer[1].p1left = true; 
        myplayer[1].p1right = false;
      }
    }
  }

  if (screen == 3)
  {

    if (keyCode == ' ')
    {

      count1 = 0;
      count2 = 0;
      screen = 0;
    }
  }

  if (screen == 1)
  { 

    if (count1 >= 6 || count2 >= 6 || count1 + count2 >= 6)
    {
      if (myplayer[0].xSpeed == 3|| myplayer[0].xSpeed == 1)
      {
        if (keyCode == SHIFT)
        { 
          myplayer[0].xSpeed = 1;
        }
      }


      if (myplayer[0].xSpeed == -3 || myplayer[0].xSpeed == -1)
      {
        if (keyCode == SHIFT)
        { 
          myplayer[0].xSpeed = -1;
        }
      } 
      if (myplayer[0].ySpeed == 3|| myplayer[0].ySpeed == 1)
      {
        if (keyCode == SHIFT)
        { 
          myplayer[0].ySpeed = 1;
        }
      }


      if (myplayer[0].ySpeed == -3 || myplayer[0].ySpeed == -1)
      {
        if (keyCode == SHIFT)
        { 
          myplayer[0].ySpeed = -1;
        }
      }



      if (myplayer[1].xSpeed == 3|| myplayer[1].xSpeed == 1)
      {
        if (keyCode == CONTROL)
        { 
          myplayer[1].xSpeed = 1;
        }
      }


      if (myplayer[1].xSpeed == -3 || myplayer[1].xSpeed == -1)
      {
        if (keyCode == CONTROL)
        { 
          myplayer[1].xSpeed = -1;
        }
      } 
      if (myplayer[1].ySpeed == 3|| myplayer[1].ySpeed == 1)
      {
        if (keyCode == CONTROL)
        { 
          myplayer[1].ySpeed = 1;
        }
      }


      if (myplayer[1].ySpeed == -3 || myplayer[1].ySpeed == -1)
      {
        if (keyCode == CONTROL)
        { 
          myplayer[1].ySpeed = -1;
        }
      }
    }




    if (keyCode == 'W')
    {
      myplayer[0].p1up = true; 
      myplayer[0].p1down = false; 
      myplayer[0].p1left = false; 
      myplayer[0].p1right = false;



      myplayer[0].ySpeed = -3;
      myplayer[0].xSpeed = 0;
    } else if (keyCode == 'S')
    {
      myplayer[0].p1up = false; 
      myplayer[0].p1down = true; 
      myplayer[0].p1left = false; 
      myplayer[0].p1right = false;


      myplayer[0].ySpeed = 3;
      myplayer[0].xSpeed = 0;
    } else if (keyCode == 'A')
    {
      myplayer[0].p1up = false; 
      myplayer[0].p1down = false; 
      myplayer[0].p1left = true; 
      myplayer[0].p1right = false;


      myplayer[0].ySpeed = 0;
      myplayer[0].xSpeed = -3;
    } else if (keyCode == 'D')
    {
      myplayer[0].p1up = false; 
      myplayer[0].p1down = false; 
      myplayer[0].p1left = false; 
      myplayer[0].p1right = true;


      myplayer[0].ySpeed = 0;
      myplayer[0].xSpeed = 3;
    }

    if (keyCode == UP)
    {
      myplayer[1].p1up = true; 
      myplayer[1].p1down = false; 
      myplayer[1].p1left = false; 
      myplayer[1].p1right = false;

      myplayer[1].ySpeed = -3;
      myplayer[1].xSpeed = 0;
    } else if (keyCode == DOWN)
    {
      myplayer[1].p1up = false; 
      myplayer[1].p1down = true; 
      myplayer[1].p1left = false; 
      myplayer[1].p1right = false;

      myplayer[1].ySpeed = 3;
      myplayer[1].xSpeed = 0;
    } else if (keyCode == LEFT)
    {
      myplayer[1].p1up = false; 
      myplayer[1].p1down = false; 
      myplayer[1].p1left = true; 
      myplayer[1].p1right = false;

      myplayer[1].ySpeed = 0;
      myplayer[1].xSpeed = -3;
    } else if (keyCode == RIGHT)
    {
      myplayer[1].p1up = false; 
      myplayer[1].p1down = false; 
      myplayer[1].p1left = false; 
      myplayer[1].p1right = true;

      myplayer[1].ySpeed = 0;
      myplayer[1].xSpeed = 3;
    }
  }
}
