class Targets {
  PVector position;
  PImage demon;
  float range = 35;
  
  
  boolean fire = false;
  boolean alive = true;
  
  
  Targets(float x, float y) {
    position = new PVector(x, y);
    demon = loadImage("demon.png");
    demon.resize(35, 35);
  }

  void update() {
  }

  void draw() {
    ellipseMode(CENTER);
    rectMode(CENTER);
    imageMode(CENTER);



    noFill();
    stroke(0, 255, 0);
    ellipse(position.x, position.y, range, range);
    image(demon, position.x, position.y);
  }

  void mousePressed() {
    if (mouseButton == LEFT) {
      alive = false;
    }
  }

  void run() {
    update();
    draw();
  }
}
