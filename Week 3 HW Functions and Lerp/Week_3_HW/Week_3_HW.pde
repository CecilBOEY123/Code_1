float xPos, yPos;
int Size = 50;
float targetx = 0;
float targety = 0;
float x = 0;
float y = 0;

int r;
float g;
int b;
int bk;

float rr;
float rg;
float rb;




void setup() {

  size (900, 800);
  xPos = width;
  yPos = height;
}

void mousePressed() {
  targetx = mouseX;
  targety = mouseY;
}


void returnAString(String string1) {
  println(string1 + "\n"); 

  frameRate(8);

  rr = random(10, 255);
  rg = random(0, 255);
  rb = random(20.255);

  fill(rr, rg, rb);

  textMode(CENTER);
  textSize(20);
  text(string1, width/2-50, height/2-100);
} 

void draw() {



  background(bk);
  bk = int(map(y, 0, height-200, 255, 0));
  
  textSize(20);
  text("CLICK TO MOVE", width/2-50, height-700);

  tmr(0);

  frameRate(20);

  x = lerp(x, targetx, 0.2);
  y = lerp(y, targety, 0.2);



  if (caldis(x, y) < 10  )
  {
   
    background(0);
    tmr(0);
    returnAString("COMPLETED");
   
  fill(rr, rb, rg);
  rect(x, y, 100, 200);

  fill(rr, rb, rg);
  rect(0, 600, 400, 200);

  fill(rr, r , rg);
  rect(500, 600, 400, 200);
    
  } else {
    strokeWeight(5);
  stroke(r, b, 0);
  r = int(map(y, 0, height-200, 255, 0));
  b = int(map(y, 0, height-200, 0, 255));



  fill(255, 0, 0);
  rect(x, y, 100, 200);

  fill(20, 0, 200);
  rect(0, 600, 400, 200);

  fill(20, 0, 200);
  rect(500, 600, 400, 200);

  noStroke();
  rect(targetx, targety, 0, 0);
  }

  
}

float caldis(float x, float y) {

  float dis;

  dis = sqrt(sq(x-400)+sq(y-600));

  return dis;
}

int tmr(int one) {

  one = millis();
  int dif;
 

  dif = one;
  
  
  fill(255, 0, 0);
  textSize(20);
  text(dif, width/2, height-750);
  return dif; 
}
