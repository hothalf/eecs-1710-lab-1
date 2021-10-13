class demon {

  boolean debug = true;
  PVector position, target;
  PImage demon;
  float margin = 50;
  int foodChoice;
  
  boolean isBothered = false;
  int botheredMarkTime = 0;
  int botheredTimeout = 3000; // Processing measures time in milliseconds
  float botheredSpread = 5;
  
  boolean isBlinking = false;
  int blinkMarkTime = 0;
  int blinkTimeout = 4000;
  int blinkDuration = 250;
  
  boolean isHunting = false;
  
  float triggerDistance1 = 100;
  float triggerDistance2 = 25;
  float movementSpeed = 0.08;
    
  // This is the constructor; it needs to have the same name as the class.
  demon(float x, float y) {

    demon = loadImage("demon.png");
    demon.resize(100,100);
    
  }
  
  void update() {
    PVector mousePos = new PVector(mouseX, mouseY);

  }
  
  void draw() {    
    ellipseMode(CENTER);
    rectMode(CENTER);
    imageMode(CENTER);
  
    image(demon, mouseX,mouseY);
  
    
  }
  
  void run() {
    update();
    draw();
  }
  

  
}
