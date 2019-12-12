int numStrings = 7; 
float[] stringsX= new float[numStrings]; 
float[] stringsY = new float[numStrings]; 
String[] words = new String[numStrings];

void setup() {

size(700, 100); 
smooth(); 

words[0] = "Hello";
words[1] = "Is";
words[2] = "It";
words[3] = "Me";
words[4] = "You're";
words[5] = "Looking";
words[6] = "For";



int spacing = width / numStrings; 
for (int i=0; i<numStrings; i++) {
stringsX[i] = 50 + i*spacing; 
stringsY[i] = 50;
}
}

void draw() {
background(255); 
for (int i=0; i<numStrings; i++) 
{
if (dist(mouseX, mouseY, stringsX[i], stringsY[i])<50)
{
 fill(255,0,0);
 text(words[i],stringsX[i],stringsY[i]);

} 
else 
{
 fill(0,0,0);
 text(words[i],stringsX[i],stringsY[i]);
}
}


}
