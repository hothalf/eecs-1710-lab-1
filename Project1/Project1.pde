PImage hell ;
float x1, y1, x2, y2, x3,x4,y3,y4;
float speedX1, speedX2;
int humanNum = 10;

ArrayList<human> humans = new ArrayList<human>(=);


void setup() {
  size(1000, 800, P2D);
  hell = loadImage("hell.jpg");
  hell.resize(hell.width * (height / hell.height), height);
  
  for (int i=0; i<humanNum; i++) {
    humans.add(new human(random(width), random(height)));
  }
  
  
  


}

void draw() {
  background(0, 127, 255);
    
  tint(255, 127);
  image(hell, x2, y2);
  

}
