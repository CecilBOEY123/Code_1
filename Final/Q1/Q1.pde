String welcomeMsg; 
boolean isCodeGreat = true;
float floatArray[] = new float[100];

void setup() 
{
welcomeMsg = "welcome to the first midterm question!";


println(welcomeMsg);


println("now we'll do a loop and print the iterating value!");

for (int i = 0; i < 100; i++)
{
println("this is loop number " + i);
}

}



void draw() 
{

if(isCodeGreat == true)
{
print(floatArray[0]); 
}

}
