class Turtle {
  PVector location;
  PVector velocity; 
  float angle= 0; 
  float c; 
  float theta; 
  float constant;

  Turtle(PVector origin, float constant) {   
    
    location = origin.get();
    velocity =  new PVector(0,0); 
    theta = 0; 
    this.constant = constant; 
    
  }
  void turnLeft() {
    
    angle-=90; 
    
  }
  void turnRight() {
    
    angle+=90; 
    // add 90 degreees from the current angle 
    
  }

  void update() {
    
    // direction of turtle according to angle; 
    velocity.fromAngle(radians(angle),velocity);
    velocity.mult(constant*0.5); 
    location.add(velocity); 
    //theta+=1;
    
  }
 
  void display() {
    noStroke(); 
    fill(c,122,240); 
    pushMatrix();
    translate(location.x,location.y);
    rotate(theta);
    ellipse(0,0, 0.7, 0.7);
    popMatrix(); 
  }

  void updateColor(float c){
    this.c = c; 
  }
}

