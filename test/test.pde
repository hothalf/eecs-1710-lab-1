int numdemon = 1;
int numhumans = 10;

demon[] demons = new demon[numdemon];
human[] humans = new human[numhumans];

void setup() { 
  size(800, 600, P2D);
  
  for (int i=0; i<demons.length; i++) {
    demons[i] = new demon(random(width), random(height));
  }
  
  for (int i=0; i<humans.length; i++) {
    humans[i] = new human(random(width), random(height));
  }
}

void draw() {
  background(127);
  
  for (int i=0; i<humans.length; i++) {
    humans[i].run();
  }
  
  for (int i=0; i<demons.length; i++) {
    demons[i].run();
  }
}
