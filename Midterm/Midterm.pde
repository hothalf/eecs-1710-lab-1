

int targetinterval = 1000;
int markTime = 0;

PImage hell;
ArrayList<Targets> targets;

PFont font;
int fontSize = 55;
void setup() {
  size(800, 600, P2D);
  hell = loadImage("hell.jpg");
  hell.resize(800, 600);

  font = createFont("Arial", fontSize);
  textFont(font, fontSize);
  
  targets = new ArrayList<Targets>();
}

void draw() {
  background(hell);

  int t = millis();

  if (t > markTime + targetinterval) {
    targets.add(new Targets(random(width), random(height)));
    markTime = t;
  }


  for (int i=targets.size()-1; i>=0; i--) {
    Targets demon = targets.get(i);

    if (demon.alive) {
      demon.run();
    } else {
      targets.remove(i);
    }
  }
}
