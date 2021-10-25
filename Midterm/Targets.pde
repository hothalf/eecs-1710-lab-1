class Targets {
  PVector position;
  PImage demon;
  float range = 70;
  
  
  boolean fire = false;
  boolean alive = true;
  int time_alive;
  int lifetime = 6000;
  
  Targets(float x, float y) {
    position = new PVector(x, y);
    demon = loadImage("demon.png");
    demon.resize(70,70 );
    time_alive = millis() ;
  }

  void update() {
    if (dist(mouseX, mouseY, position.x, position.y) < range) {
      mousePressed();
    } 
     // will die after 6 seconds
    if (alive && millis() > time_alive + lifetime) alive = false;
  
    
  }

  void draw() {
    ellipseMode(CENTER);
    rectMode(CENTER);
    imageMode(CENTER);


    noFill();
    stroke(80,136,255);
    strokeWeight(8);
    ellipse(position.x, position.y, range, range);
    image(demon, position.x, position.y);
  }

  void mousePressed() {
    if (mouseButton == LEFT) {
      alive = false;
      demons_killed++;
    }
  }

  void run() {
    update();
    draw();
  }
}
