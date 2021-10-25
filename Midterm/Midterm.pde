

int targetinterval = 1000;
int markTime = 0;

PImage hell;
ArrayList<Targets> targets;

PFont font;
int fontSize = 55;
int demons_killed = 0;


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
    if (t/1000>15){
      targets.add(new Targets(random(width), random(height)));
    }
    if(t/1000>35){
     targets.add(new Targets(random(width), random(height))); 
    }
  }


  for (int i=targets.size()-1; i>=0; i--) {
    Targets demon = targets.get(i);

    if (demon.alive) {
      demon.run();
    } else {
      targets.remove(i);
    }
  }
  
  fill(255);
  text(t/1000, 10, fontSize);
  text(demons_killed, 150, fontSize);
  if(t/1000 == 60){
    text("Game Over", width/2, fontSize);
    exit();
  }
  
}
