L_System l; 
Rule[] r; 
int count = 0; 
String axiom; 
float angle = 0;
Turtle front; 
Turtle back; 
String s;
String sFront; 
String sBack; 
int countChar1; 
int countChar2 = 0; 
float pickColor = 0;


void setup() {

  size(500, 500, P3D); 
  colorMode(HSB);
 // background(160, 10, 200); 
 background(0);
  // two new rules 
  r = new Rule[1]; 
  axiom ="F-F-F-F";  //pick different rules and patterns to draw
  r[0] = new Rule('F', "FF-F--F-F");
  smooth(); 
  frameRate(10000); 
  float constantBack=-1; 
  float constantFront= 1;
   

  l = new L_System(axiom, r); 
  back = new Turtle(new PVector(width-75, height-75), constantBack); 
  while (count < 6) {
    l.generate(); 
    count++;
  }

  s = l.getSentence(); 

}

void draw() {

  if (countChar2< s.length()-1) {
    countChar2++;
  }


  char c2 = s.charAt(countChar2); 

  if (c2 == '-') {
    back.turnRight();
  //  front.turnRight();
  } else if (c2 == '+') {
    back.turnLeft();
   // front.turnLeft();
  }


  back.updateColor(pickColor);
  back.display();

  pickColor+=0.005;

  // set colro back to 0 
  if (pickColor >= 255) {
    pickColor = 0;
  }

  // update if string has not been full read yet
  if (countChar2 < s.length()-2) {
    back.update();
    //front.update();
  } else {
    
   
  }
}

