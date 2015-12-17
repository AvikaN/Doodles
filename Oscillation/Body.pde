class Body{
  PVector location;
  float angle, angleConstant; 
  float radius, position; 
  int c; 
  
  Body(float startAngle, float p){
    angle = startAngle; 
    position = p; 
    location = new PVector(width/2,height/2); 
  }
 
  void move(float x, float y){
   radius = map(sin(angle), -1, 1, min, max);
   location.x = radius * cos(position) + x;
   location.y = radius * sin(position) + y; 
   angle+=angleConstant; 
   position+=0.002;
  }
  
  void update(){
     angleConstant = map(radius,min,max,0.030,0.001); 
  }
}
