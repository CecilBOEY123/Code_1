float xPos, yPos;
int size = 50;

float r;
float g;
float b;
int m;
int n;





void setup() {

  size (800, 800);
  noStroke();
  xPos = width/2;
  yPos = height/2;

}

void draw() {

  r = random(0, 255);
  g = random(5, 250);
  b = random(2, 253);

  if (caldis(xPos, yPos) < size/2)
  {
    frameRate(10);
    background(r, g, b);
  } else {
    background(255);
  }

  fill(m,n,g);
  m = int(map(mouseX,0,width,100,255));
  n = int(map(0,mouseY,width,100,255));
  
  ellipse(xPos, yPos, size, size);
  println(caldis(xPos, yPos));
}

float caldis(float x, float y) {

  float dis;

  dis = sqrt(sq(x-mouseX)+sq(y-mouseY));

  return dis;
}
