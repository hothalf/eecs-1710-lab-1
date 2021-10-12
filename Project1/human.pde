class human {
  
  
  PVector position;
  float sizeVal;
  PImage human;
  boolean alive = true;
  
  human(float x, float y) {
    
    human = loadImage("human.png");
    human.resize(75,75);
    
    
  }
  
  void update() { // updates
    
    for(human human : humans){
      humans.add(human);
    }
    // TODO
  }
  
  void draw() {
    if (alive) {
      human = loadImage("human.png");
      human.resize(75,7);
    }
  }
  
  void run() {
    update();
    draw();
  }
  
}
