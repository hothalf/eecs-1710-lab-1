float gravity = 0.4;
float gravityDelta = 0.01;
float friction = 0.99;
float floor;
ArrayList<Targets> targets = new ArrayList<Targets>();
Targets target;

void setup() {
  size(800, 600, P2D);
  floor = height;
  
  target = new Targets(width/2, height - 100);
}

void draw() {
  background(127);
    
  target.run();
  
}
