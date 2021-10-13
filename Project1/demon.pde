class demon {
  PVector position;
  PImage demon;
  float sizeVal;
  boolean alive = true;
  
  
    demon(float x, float y) {

    demon = loadImage("demon.png");
    demon.resize(100,100);
  }
  
  
  
  void update() {
    // TODO
    
  }
  
  void draw() {
    image(demon,mouseX,mouseY);
    }
  
  
  void run() {
    update();
    draw();
  }
  
 
}
