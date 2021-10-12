class demon {
  PVector position;
  PImage demon;
  float sizeVal;
  boolean alive = true;
  
  
    demon(float x, float y) {
    position = new PVector(x, y);
    pickEscapeTarget();
    
    demon = loadImage("demon.png");
    demon.resize(100,100);

    
    faceCurrent = face01;
  }
  
  
  void update() {
    // TODO
  }
  
  void draw() {
    if (alive) {
      ellipseMode(CENTER);
      noStroke();
      fill(0);
      ellipse(position.x, position.y, sizeVal, sizeVal);
    }
  }
  
  void run() {
    update();
    draw();
  }
  
}
