int numdemon = 1;
int numhumans = 10;

PImage hell;

demon[] demons = new demon[numdemon];
ArrayList<human> humans = new ArrayList<human>();

void setup() { 
  size(800, 600, P2D);
  
  for (int i=0; i<demons.length; i++) {
    demons[i] = new demon(random(width), random(height));
  }
  for (int i=0; i<numhumans; i++) {
    humans.add(new human(random(width), random(height)));
}
}

void draw() {
  background(127);
  
  for (int i=0; i<numhumans; i++) {
    humans.get(i).run();
  }
  
  for (int i=0; i<demons.length; i++) {
    demons[i].run();
  }
}
