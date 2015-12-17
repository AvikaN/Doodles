class Connector{
  Body b1; 
  Body b2;
  float p1; 
  float p2; 
  float constant1x; 
  float constant2x; 
  float constant1y; 
  float constant2y; 
  float c; 
  float s; 
  float lifeSpan; 
  float curveC; 
  float h; 
  
  Connector(Body body1, Body body2){
    b1 = body1; 
    b2 = body2; 
    
    p1 = b1.position;
    p2 = b2.position; 
    curveC = 60;
    
    constant1x = map(cos(p1), -1,1,-curveC,curveC);
    constant1y = map(sin(p1), -1,1,-curveC,curveC);
    constant2x = map(cos(p2), -1,1,-curveC,curveC);
    constant2y = map(sin(p2), -1,1,-curveC,curveC);

  }
  
  void display(){
    c = map(b2.radius,min,max,0,100);
    lifeSpan = map(b2.radius,min,max,80,0);
    h = ((frameCount)/80) % 255; 
    noFill();
    stroke(h,c,100,lifeSpan); 
    strokeWeight(size);
    bezier(b1.location.x, b1.location.y, b1.location.x+constant1x, b1.location.y+constant1y, b2.location.x+constant2x, 
    b2.location.y + constant2y, b2.location.x, b2.location.y); 
  }
  
  void update(){
    p1 = b1.position;
    p2 = b2.position; 
    constant1x = map(cos(p1), -1,1,-curveC,curveC);
    constant1y = map(sin(p1), -1,1,-curveC,curveC);
    constant2x = map(cos(p2), -1,1,-curveC,curveC);
    constant2y = map(sin(p2), -1,1,-curveC,curveC);
  }
}
