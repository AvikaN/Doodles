class Flower {

  float anglec;  
  float positionc;
  PVector location;
  Body[] b; 
  ArrayList<Connector> c;

  Flower(PVector origin) {

    anglec = 0.1;      // flower!! 0.01, 0.45    // also nice is 0.1,0.8  //0.1,0.9   //0.1,100   // 0.2,100  //0.35,100
    positionc = 0.8;    // 0.65,100   //0.75,100   // 0.25,1000   //0.25,1200  // 0.15,1200  //10,1100  //0.05,0.8  // 0.55,100
    location = origin.get();

    // body
    b = new Body[50]; 
    float p  = 0;
    float a = 10; 
    for (int i = 0; i< b.length; i++) {
      b[i] = new Body(a, p);
      a+=anglec; 
      p+=positionc;
    }
    // connectors 
    c = new ArrayList<Connector>(); 
    for (int i = 0; i<b.length-1; i++) {
      c.add(new Connector(b[i], b[i+1]));
    }
  }
  void run() {
    for(Connector a : c) {
      a.display();
      a.update();
    }
    for (Body a : b) {
      a.move(location.x,location.y);
      a.update();
    }
  }
}

