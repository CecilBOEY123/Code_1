

void setup()
{
  
size(600, 600); 

}

void draw()
{
  
background(0); 

for(int i = 2; i<=10; i+=2)
  {
    for(int j = 2; j<=10; j+=2)
    {
      
      if(i % 2 == 0 && j % 2 ==0)
      {
        text(str(i*j), i*50, j*50); 
      }
//hint : str() converts an integer to a string
    }
  }


}
