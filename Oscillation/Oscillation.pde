float size = 1; 
float max = 110;
float min = 0;
PFont font; 
Flower f;
void setup() {
  size(500, 500); 
  f = new Flower(new PVector(width/2,height/2));
  colorMode(HSB,100);
}


void draw() {
  noStroke();
  fill(255,0.5);
  rect(0,0,width,height);
  f.run();
}

