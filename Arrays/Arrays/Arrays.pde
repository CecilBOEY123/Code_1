int numbers[] = {2, 4, 6, 8, 10};
float randomnum[];

String words[];

int counter;

boolean count;



void setup()
{
  size(600, 600);

  randomnum = new float[100];

  for (int j =0; j<100; j++)
  {
    float r = random(0, 100);

    randomnum[j] = r;
  }

  words = new String[4];

  words[0] = "welcome";
  words[1] = "to";
  words[2] = "Jurassic";
  words[3] = "Park";


  counter = 0;

  count = false;
}

void draw()
{

  for (int i = 0; i<4; i++)
  {
    //println(numbers[i]);
  }




  for (int j =0; j<randomnum.length; j++)
  {


    //rect(randomnum[j],randomnum[j],randomnum[j],randomnum[j]);
  }
  

  if (count)
  {
    println(counter);
  } else {


    for (int k=0; k<words.length; k++)
    {
      println(words[k]);

      if (words[k] == "to")
      {

        counter += 1;
      }

      if (words.length == 4)
      {
        count = true;
      }
    }
  }
}
