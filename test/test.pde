int numdemon = 1;
int numhumans = 10;

PImage hell;

ArrayList<demon> demons = new ArrayList<demon>();
ArrayList<human> humans = new ArrayList<human>();

void setup() { 
  size(800, 600, P2D);
  
  for (int i=0; i<numdemon; i++) {
    demons.add(new demon(random(width), random(height)));
  }
  for (int i=0; i<numhumans; i++) {
    humans.add(new human(random(width), random(height)));
}

  hell = loadImage("hell.jpg");
  hell.resize(800,600);
}

void draw() {
  background(hell);
  
  for (int i=0; i<humans.size(); i++) {
    humans.get(i).run();
  }
  
  for (int i=0; i<demons.size(); i++) {
    demons.get(i).run();
  }
}
